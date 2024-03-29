# frozen_string_literal: true

require 'oci'

module Puppet_X
  module EnterpriseModules
    module Oci
      # Docs
      class NameResolver
        include Puppet_X::EnterpriseModules::Oci::Settings
        include Puppet_X::EnterpriseModules::Oci::Config

        private_class_method :new

        def initialize
          @clients      = {}
          @cache        = {}
          @cached_types = {}
          @tenant_ids   = {}
        end

        def initialize_for_tenant(tenant)
          return if @clients[tenant]

          @clients[tenant] = client_for(OCI::Identity::IdentityClient, tenant)
          #
          # If we are using an instance principal then use compartment_id as tenant
          #
          @tenant_ids[tenant] = @clients[tenant].api_client.config.tenancy || Facter.value(:oci_instance)['compartment_id']
          #
          # We now use a large limit, be we need to modify it to use multiple calls.
          #
          @cache[tenant] = @clients[tenant].list_compartments(@tenant_ids[tenant], :limit => 9_999_999, :access_level => 'ACCESSIBLE', :compartment_id_in_subtree => true).data
          @cached_types[tenant] = []
        end

        def self.instance(tenant)
          @instance ||= new
          @instance.initialize_for_tenant(tenant)
          @instance
        end

        def compartments(tenant)
          @cache[tenant].select { |o| o.compartment? && o.lifecycle_state == 'ACTIVE' }
        end

        def compartment_for_ocid(tenant, ocid)
          compartments(tenant).find { |e| e.id == ocid }
        end

        def id_type(ocid)
          ocid.scan(/ocid1\.(\w*)\./).first.first.to_sym
        end

        #
        # Allow refresh of resources for the specified ocid_type.
        # This means a new search will re-fetch all resource names
        # into the cache
        #
        def invalidate(tenant, ocid_type)
          @cached_types[tenant].delete(ocid_type)
        end

        #
        # Mark the specified type in the specified tenant as available
        # in the cache. New searches will only be resolved from the cache.
        #
        def mark_as_cached(tenant, ocid_type)
          @cached_types[tenant] << ocid_type # Mark the ocid type as cached
        end

        #
        # Add objects to the cache.
        #
        def add_to_cache(tenant, objects)
          @cache[tenant] += Array(objects)
          @cache[tenant].uniq(&:id) # remove duplicate from cache
        end

        def from_cache(tenant, ocid)
          ocid_type = id_type(ocid)
          object = @cache[tenant].find { |e| e.id == ocid && e.id_type == ocid_type }
          return object if object

          unless @cached_types[tenant].include?(ocid_type)
            #
            # Fetch all objects of specified type
            #
            object_class = ServiceInfo.id_to_class(ocid_type)
            lister = ResourceLister.new(tenant, object_class)
            add_to_cache(tenant, lister.resource_list.select(&:present?))
            mark_as_cached(tenant, ocid_type)
            object = @cache[tenant].find { |e| e.id == ocid && e.id_type == ocid_type }
          end
          fail "Object with #{ocid} not found." if object.nil?

          object
        end

        def name_to_ocid(tenant, full_name, id_type = :compartment)
          return full_name.collect { |n| name_to_ocid(tenant, n, id_type) } if full_name.is_a?(Array)

          #
          # For creation of a tag namespace or a tag, you can specify a compartment, but
          # when referencing it, you don't.
          #
          if [:tagnamespace, :tagdefinition].include?(id_type)
            name = full_name
          else
            full_name = full_name.gsub('//', '/') # Handle double seperators
            tenancy, relative_name = full_name.scan(%r{^(?:(.*) \(root\)/)?(.*)?}).first
            return relative_name if valid_ocid?(relative_name)
            fail "tenancy #{tenancy} different than tenancy in name #{full_name}" if tenancy && tenant != tenancy

            compartment_name, name = relative_name.scan(%r{^(?:(.*)/)?(.*)$}).first
            compartment_id = if compartment_name.nil?
                               @tenant_ids[tenant]
                             else
                               name_to_ocid(tenant, compartment_name, :compartment)
                             end
            return compartment_id if name.empty?
          end

          object = find_in_cache(tenant, id_type, name, compartment_id)
          if object.nil? # Not in cache, fetch it
            #
            # Fetch all objects of specified type
            #
            object_class = ServiceInfo.id_to_class(id_type)
            lister = ResourceLister.new(tenant, object_class)
            @cache[tenant] += lister.resource_list(compartment_id).select(&:present?)
            @cache[tenant].uniq(&:id) # remove duplicate from cache
            object = find_in_cache(tenant, id_type, name, compartment_id)
          end
          fail "No #{id_type} found with name #{full_name}" if object.nil?

          object.id
        end

        def find_in_cache(tenant, id_type, name, compartment_id = nil)
          if compartment_id && compartment_id == @tenant_ids[tenant]
            @cache[tenant].find { |o| o.id_type == id_type && o.puppet_name == name && (o.compartment_id == compartment_id || o.compartment_id.nil?) }
          else
            @cache[tenant].find do |object|
              if compartment_id && object.respond_to?(:compartment_id)
                object.id_type == id_type && object.puppet_name == name && object.compartment_id == compartment_id
              else
                #
                # TODO: Check if there is a more acurate way to select an object_id on an object that
                # doesn't respond to compartment_id
                #
                object.id_type == id_type && object.puppet_name == name
              end
            end
          end
        end

        def compartment_ocid_to_name(tenant, ocid)
          compartment = @cache[tenant].find { |e| e.id == ocid }
          compartment.name
        end

        def compartment_parent(tenant, ocid)
          compartment = @cache[tenant].find { |e| e.id == ocid }
          compartment.compartment_id
        end

        def ocid_to_full_name(tenant, ocid)
          if ocid.nil? || tenant?(ocid)
            tenant_string(tenant)
          else
            "#{tenant_string(tenant)}/#{ocid_to_name(tenant, ocid)}"
          end
        end

        def ocid_to_name(tenant, ocid)
          return ocid.collect { |i| ocid_to_name(tenant, i) } if ocid.is_a?(Array)
          return '/' if ocid.nil? || tenant?(ocid)

          object = from_cache(tenant, ocid)
          #
          # Because some objects from OCI don't have a name compartment, we check
          # first if the method exists.
          #
          compartment_id = object.respond_to?(:compartment_id) ? object.compartment_id : nil
          #
          # The name is prefarably fetched by the name attribute. If it doesn't exist,
          # we use the display_name.
          #
          name = object.respond_to?(:name) ? object.name : object.display_name
          #
          # Some resources originate a compartment, but don't actually reside in there
          # For those resources we return the base name
          #
          return name if compartment_id.nil? || ocid =~ /tagnamespace|tagdefinition/

          names = [name]
          loop do
            break if tenant?(compartment_id)

            names.unshift(compartment_ocid_to_name(tenant, compartment_id))
            compartment_id = compartment_parent(tenant, compartment_id)
          end
          names.join('/')
        end

        def tenant?(ocid)
          ocid.scan(/ocid1\.(\w*)\./).first.first == 'tenancy'
        end

        def valid_ocid?(ocid)
          ocid.scan(/ocid1\..*/).any?
        end

        def tenant_string(tenant)
          "#{tenant} (root)"
        end
      end
    end
  end
end

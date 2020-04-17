# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:mount_target_id, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  extend Puppet_X::EnterpriseModules::Oci::Config
  extend Puppet_X::EnterpriseModules::Oci::Settings

  desc <<-DESC
  The OCID of this export's mount target.
  Rather use the property `mount_target` instead of a direct OCID reference.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[String[1]]')

  def self.translate_to_resource(raw_resource, _resource)
    @tenant = raw_resource['tenant']
    #
    # TODO: This is very inefficient. But we need to find a mere effecient way to get the mount_target_id of an export
    #
    lister = Puppet_X::EnterpriseModules::Oci::ResourceLister.new(@tenant, OCI::FileStorage::Models::MountTarget)
    lister.resource_list.find { |e| e.export_set_id == raw_resource['export_set_id'] }.id
  end
end

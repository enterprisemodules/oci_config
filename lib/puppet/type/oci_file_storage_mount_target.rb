# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
require 'puppet_x/enterprisemodules/oci/core'

Puppet::Type.newtype(:oci_file_storage_mount_target) do
  include Puppet_X::EnterpriseModules::Oci::Type
  desc <<-DESC
  Provides access to a collection of file systems through one or more VNICs on a
specified subnet. The set of file systems is controlled through the
referenced export set.

**Warning:** Oracle recommends that you avoid using any confidential information when you supply string values using the API.

  Here is an example on how to use this:

    oci_file_storage_mount_target { 'tenant (root)/my_mount_target':
      ensure              => 'present',
      availability_domain => 'arMl:EU-FRANKFURT-1-AD-1',
      subnet              => 'my_sub_net',
    }

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).

  DESC

  add_title_attributes(:mount_target_name)
  #
  # The include files contain specific non-generated code for the types
  #
  include_file "puppet/type/#{name}/after_destroy", binding

  ensurable

  parameter :name
  parameter :mount_target_name
  parameter :tenant
  parameter :oci_timeout
  parameter :oci_wait_interval
  parameter :present_states
  parameter :absent_states
  parameter :synchronized
  parameter :compartment
  property  :id
  property  :compartment_id

  property :availability_domain
  property :lifecycle_state
  property :private_ips
  property :private_ip_ids
  property :subnet
  property :subnet_id
  property :time_created
  property :freeform_tags
  property :defined_tags
  property :hostname_label
  property :ip_address

  validate do
    validate_reference_propery(:compartment_id, self)
    validate_reference_propery(:private_ip_ids, self)
    validate_reference_propery(:subnet_id, self)
  end
end

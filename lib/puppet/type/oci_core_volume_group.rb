# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
require 'puppet_x/enterprisemodules/oci/core'

Puppet::Type.newtype(:oci_core_volume_group) do
  include Puppet_X::EnterpriseModules::Oci::Type
  desc <<-DESC
  Specifies a volume group which is a collection of
volumes. For more information, see [Volume Groups](https://docs.cloud.oracle.com/Content/Block/Concepts/volumegroups.htm).

**Warning:** Oracle recommends that you avoid using any confidential information when you
supply string values using the API.

  Here is an example on how to use this:

    oci_core_volume_group { 'tenant (root)/my_volume_group':
      ensure              => 'present',
      availability_domain => 'arMl:EU-FRANKFURT-1-AD-1',
      volumes             => ['my_compartment/my_volume_1'],
    }

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).

  DESC

  add_title_attributes(:volume_group_name)
  #
  # The include files contain specific non-generated code for the types
  #
  include_file "puppet/type/#{name}/before_create", binding

  ensurable

  parameter :name
  parameter :volume_group_name
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
  property :defined_tags
  property :freeform_tags
  property :lifecycle_state
  property :size_in_mbs
  property :size_in_gbs
  property :time_created
  property :volumes
  property :volume_ids
  property :is_hydrated

  validate do
    validate_reference_propery(:compartment_id, self)
    validate_reference_propery(:volume_ids, self)
  end
end

# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
require 'puppet_x/enterprisemodules/oci/core'

Puppet::Type.newtype(:oci_key_management_key) do
  include Puppet_X::EnterpriseModules::Oci::Type
  desc <<-DESC
  An encryption key.

  Here is an example on how to use this:

      oci_key_management_key { 'tenant (root)/my_key}':
        ensure    => 'present',
        vault     => 'my_compartmentt/my_vault',
        key_shape =>  {
          algorithm => 'AES',
          length    => 16,
        },
      }

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).

  DESC

  add_title_attributes(:key_name)
  #
  # The include files contain specific non-generated code for the types
  #
  include_file "puppet/type/#{name}/client", binding

  ensurable

  parameter :name
  parameter :key_name
  parameter :tenant
  parameter :oci_timeout
  parameter :oci_wait_interval
  parameter :present_states
  parameter :absent_states
  parameter :synchronized
  parameter :compartment
  property  :id
  property  :compartment_id

  property :current_key_version
  property :defined_tags
  property :freeform_tags
  property :key_shape
  property :lifecycle_state
  property :time_created
  property :time_of_deletion
  property :vault
  property :vault_id

  validate do
    validate_reference_propery(:compartment_id, self)
    validate_reference_propery(:vault_id, self)
  end
end

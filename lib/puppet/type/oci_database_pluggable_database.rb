# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
require 'puppet_x/enterprisemodules/oci/core'

Puppet::Type.newtype(:oci_database_pluggable_database) do
  include Puppet_X::EnterpriseModules::Oci::Type

  add_title_attributes(:pluggable_database_name)

  ensurable

  parameter :name
  parameter :pluggable_database_name
  parameter :tenant
  parameter :oci_timeout
  parameter :oci_wait_interval
  parameter :present_states
  parameter :absent_states
  parameter :synchronized
  parameter :compartment
  property  :id
  property  :compartment_id

  property :container_database
  property :container_database_id
  property :pdb_name
  property :lifecycle_state
  property :time_created
  property :connection_strings
  property :open_mode
  property :is_restricted
  property :freeform_tags
  property :defined_tags
  property :pdb_admin_password
  property :tde_wallet_password
  property :should_pdb_admin_account_be_locked

  validate do
    validate_reference_propery(:container_database_id, self)
    validate_reference_propery(:compartment_id, self)
  end
end

# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
require 'puppet_x/enterprisemodules/oci/core'

Puppet::Type.newtype(:oci_database_autonomous_database) do
  include Puppet_X::EnterpriseModules::Oci::Type
  desc <<-DESC
  An Oracle Autonomous Database.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).

  DESC

  add_title_attributes(:autonomous_database_name)

  ensurable

  parameter :name
  parameter :autonomous_database_name
  parameter :tenant
  parameter :oci_timeout
  parameter :oci_wait_interval
  parameter :present_states
  parameter :absent_states
  parameter :synchronized
  parameter :compartment
  property  :id
  property  :compartment_id

  property :lifecycle_state
  property :lifecycle_details
  property :db_name
  property :is_free_tier
  property :system_tags
  property :time_reclamation_of_free_autonomous_database
  property :time_deletion_of_free_autonomous_database
  property :cpu_core_count
  property :data_storage_size_in_tbs
  property :is_dedicated
  property :autonomous_container_database
  property :autonomous_container_database_id
  property :time_created
  property :service_console_url
  property :connection_strings
  property :connection_urls
  property :license_model
  property :used_data_storage_size_in_tbs
  property :freeform_tags
  property :defined_tags
  property :db_version
  property :is_preview
  property :db_workload
  property :whitelisted_ips
  property :is_auto_scaling_enabled
  property :admin_password
  property :is_preview_version_with_service_terms_accepted
  property :source
  property :source_id
  property :subnet
  property :subnet_id
  property :nsgs
  property :nsg_ids
  property :private_endpoint
  property :private_endpoint_label
  property :data_safe_status
  property :time_maintenance_begin
  property :time_maintenance_end
  property :private_endpoint_ip
  property :available_upgrade_versions
  property :infrastructure_type
  property :is_refreshable_clone
  property :time_of_last_refresh
  property :time_of_last_refresh_point
  property :time_of_next_refresh
  property :open_mode
  property :refreshable_status
  property :refreshable_mode
  property :permission_level
  property :time_of_last_switchover
  property :time_of_last_failover
  property :is_data_guard_enabled
  property :failed_data_recovery_in_seconds
  property :standby_db
  property :backup_config
  property :data_storage_size_in_gbs
  property :is_access_control_enabled
  property :operations_insights_status
  property :role
  property :key_store
  property :key_store_id
  property :key_store_wallet_name

  validate do
    validate_reference_propery(:compartment_id, self)
    validate_reference_propery(:autonomous_container_database_id, self)
    validate_reference_propery(:subnet_id, self)
    validate_reference_propery(:nsg_ids, self)
    validate_reference_propery(:source_id, self)
    validate_reference_propery(:key_store_id, self)
  end
end

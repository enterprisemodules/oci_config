# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
require 'puppet_x/enterprisemodules/oci/core'

Puppet::Type.newtype(:oci_core_instance) do
  include Puppet_X::EnterpriseModules::Oci::Type
  desc <<-DESC
  A compute host. The image used to launch the instance determines its operating system and other
software. The shape specified during the launch process determines the number of CPUs and memory
allocated to the instance. For more information, see
[Overview of the Compute Service](https://docs.cloud.oracle.com/Content/Compute/Concepts/computeoverview.htm).

To use any of the API operations, you must be authorized in an IAM policy. If you're not authorized,
talk to an administrator. If you're an administrator who needs to write policies to give users access, see
[Getting Started with Policies](https://docs.cloud.oracle.com/Content/Identity/Concepts/policygetstarted.htm).

**Warning:** Oracle recommends that you avoid using any confidential information when you
supply string values using the API.

  Here is an example on how to use this:

    oci_core_instance { 'tenant (root)/my_instance':
      ensure              => 'present',
      availability_domain => 'arMl:EU-FRANKFURT-1-AD-1',
      fault_domain        => 'FAULT-DOMAIN-2',
      image               => 'Oracle-Linux-7.7-2019.12.18-0',
      launch_mode         => 'NATIVE',
      region              => 'eu-frankfurt-1',
      shape               => 'VM.Standard2.1',
      vnics               => {
        'nic1' => {
          'nic_index' => 0,
          'hostname_label' => 'my_host',
          'is_primary' => true,
          'skip_source_dest_check' => true,
          'subnet' => 'Public Subnet'
        }
      },
      volumes             => {
        'data_disk_1' => {
          'attachment_type' => 'paravirtualized',
          'device' => '/dev/oracleoci/oraclevdb',
          'display_name' => 'data_disk_1',
          'is_read_only' => true,
        },
        'data_disk_2' => {
          'attachment_type' => 'paravirtualized',
          'device' => '/dev/oracleoci/oraclevdc',
          'display_name' => 'data_disk_2',
          'is_read_only' => true,
        }
      },
    }

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).

  DESC

  add_title_attributes(:instance_name)

  ensurable

  parameter :name
  parameter :instance_name
  parameter :tenant
  parameter :oci_timeout
  parameter :oci_wait_interval
  parameter :present_states
  parameter :absent_states
  parameter :synchronized
  parameter :compartment
  property  :id
  property  :compartment_id

  property :volumes
  property :boot_volumes
  property :vnics
  property :availability_domain
  property :dedicated_vm_host
  property :dedicated_vm_host_id
  property :defined_tags
  property :extended_metadata
  property :fault_domain
  property :freeform_tags
  property :ipxe_script
  property :launch_mode
  property :launch_options
  property :lifecycle_state
  property :metadata
  property :region
  property :shape
  property :source_details
  property :system_tags
  property :time_created
  property :agent_config
  property :time_maintenance_reboot_due
  property :is_pv_encryption_in_transit_enabled
  property :detached_volumes
  property :attached_volumes

  validate do
    validate_reference_propery(:compartment_id, self)
    validate_reference_propery(:dedicated_vm_host_id, self)
  end
end

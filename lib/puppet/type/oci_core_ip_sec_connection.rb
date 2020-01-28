# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
require 'puppet_x/enterprisemodules/oci/core'

Puppet::Type.newtype(:oci_core_ip_sec_connection) do
  include Puppet_X::EnterpriseModules::Oci::Type
  desc <<-DESC
  A connection between a DRG and CPE. This connection consists of multiple IPSec
tunnels. Creating this connection is one of the steps required when setting up
an IPSec VPN.

**Important:**  Each tunnel in an IPSec connection can use either static routing or BGP dynamic
routing (see the {IPSecConnectionTunnel} object's
`routing` attribute). Originally only static routing was supported and
every IPSec connection was required to have at least one static route configured.
To maintain backward compatibility in the API when support for BPG dynamic routing was introduced,
the API accepts an empty list of static routes if you configure both of the IPSec tunnels to use
BGP dynamic routing. If you switch a tunnel's routing from `BGP` to `STATIC`, you must first
ensure that the IPSec connection is configured with at least one valid CIDR block static route.
Oracle uses the IPSec connection's static routes when routing a tunnel's traffic *only*
if that tunnel's `routing` attribute = `STATIC`. Otherwise the static routes are ignored.

For more information about the workflow for setting up an IPSec connection, see
[IPSec VPN](https://docs.cloud.oracle.com/Content/Network/Tasks/managingIPsec.htm).

To use any of the API operations, you must be authorized in an IAM policy. If you're not authorized,
talk to an administrator. If you're an administrator who needs to write policies to give users access, see
[Getting Started with Policies](https://docs.cloud.oracle.com/Content/Identity/Concepts/policygetstarted.htm).

**Warning:** Oracle recommends that you avoid using any confidential information when you
supply string values using the API.

  Here is an example on how to use this:

    oci_core_ip_sec_connection { 'tenant (root)/my_ip_sec_connection':
      ensure        => 'present',
      drg           => 'my_compartment/my_drg',
      cpe           => 'my_compartment/my_cpe',
      static_routes => ['10.0.0.0/16'],
      oci_timeout   => 1200, # This can take a long time, so we need a longer timeout
    }

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).

  DESC

  add_title_attributes(:ip_sec_connection_name)

  ensurable

  parameter :name
  parameter :ip_sec_connection_name
  parameter :tenant
  parameter :oci_timeout
  parameter :oci_wait_interval
  parameter :present_states
  parameter :absent_states
  parameter :synchronized
  parameter :compartment
  property  :id
  property  :compartment_id

  property :cpe
  property :cpe_id
  property :defined_tags
  property :drg
  property :drg_id
  property :freeform_tags
  property :lifecycle_state
  property :cpe_local_identifier
  property :cpe_local_identifier_type
  property :static_routes
  property :time_created
  property :tunnel_configuration

  validate do
    validate_reference_propery(:compartment_id, self)
    validate_reference_propery(:cpe_id, self)
    validate_reference_propery(:drg_id, self)
  end
end

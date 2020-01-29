# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
require 'puppet_x/enterprisemodules/oci/core'

Puppet::Type.newtype(:oci_core_cpe) do
  include Puppet_X::EnterpriseModules::Oci::Type
  desc <<-DESC
  An object you create when setting up an IPSec VPN between your on-premises network
and VCN. The `Cpe` is a virtual representation of your customer-premises equipment,
which is the actual router on-premises at your site at your end of the IPSec VPN connection.
For more information,
see [Overview of the Networking Service](https://docs.cloud.oracle.com/Content/Network/Concepts/overview.htm).

To use any of the API operations, you must be authorized in an IAM policy. If you're not authorized,
talk to an administrator. If you're an administrator who needs to write policies to give users access, see
[Getting Started with Policies](https://docs.cloud.oracle.com/Content/Identity/Concepts/policygetstarted.htm).

**Warning:** Oracle recommends that you avoid using any confidential information when you
supply string values using the API.

  Here is an example on how to use this:

      oci_core_cpe { 'tenant (root)/test_cpe':
        ensure     => 'present',
        ip_address => '10.0.0.1',
      }

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).

  DESC

  add_title_attributes(:cpe_name)

  ensurable

  parameter :name
  parameter :cpe_name
  parameter :tenant
  parameter :oci_timeout
  parameter :oci_wait_interval
  parameter :present_states
  parameter :absent_states
  parameter :synchronized
  parameter :compartment
  property  :id
  property  :compartment_id

  property :defined_tags
  property :freeform_tags
  property :ip_address
  property :time_created

  validate do
    validate_reference_propery(:compartment_id, self)
  end
end

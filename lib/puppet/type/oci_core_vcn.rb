# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
require 'puppet_x/enterprisemodules/oci/core'

Puppet::Type.newtype(:oci_core_vcn) do
  include Puppet_X::EnterpriseModules::Oci::Type
  desc <<-DESC
  A virtual cloud network (VCN). For more information, see
[Overview of the Networking Service](https://docs.cloud.oracle.com/Content/Network/Concepts/overview.htm).

To use any of the API operations, you must be authorized in an IAM policy. If you're not authorized,
talk to an administrator. If you're an administrator who needs to write policies to give users access, see
[Getting Started with Policies](https://docs.cloud.oracle.com/Content/Identity/Concepts/policygetstarted.htm).

**Warning:** Oracle recommends that you avoid using any confidential information when you
supply string values using the API.

  Here is an example on how to use this:

   oci_core_vcn { 'tenant (root)/my_vcn':
      ensure        => 'present',
      cidr_block    => '10.0.0.0/16',
      freeform_tags => {'test' => 'yes'},
    }

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).

  DESC

  add_title_attributes(:vcn_name)

  ensurable

  parameter :name
  parameter :vcn_name
  parameter :tenant
  parameter :oci_timeout
  parameter :oci_wait_interval
  parameter :present_states
  parameter :absent_states
  parameter :synchronized
  parameter :compartment
  property  :id
  property  :compartment_id

  property :cidr_block
  property :default_dhcp_options
  property :default_dhcp_options_id
  property :default_route_table
  property :default_route_table_id
  property :default_security_list
  property :default_security_list_id
  property :defined_tags
  property :dns_label
  property :freeform_tags
  property :ipv6_cidr_block
  property :ipv6_public_cidr_block
  property :lifecycle_state
  property :time_created
  property :vcn_domain_name
  property :is_ipv6_enabled

  validate do
    validate_reference_propery(:compartment_id, self)
    validate_reference_propery(:default_dhcp_options_id, self)
    validate_reference_propery(:default_route_table_id, self)
    validate_reference_propery(:default_security_list_id, self)
  end
end

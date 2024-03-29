# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
require 'puppet_x/enterprisemodules/oci/core'

Puppet::Type.newtype(:oci_core_subnet) do
  include Puppet_X::EnterpriseModules::Oci::Type
  desc <<-DESC
  A logical subdivision of a VCN. Each subnet
consists of a contiguous range of IP addresses that do not overlap with
other subnets in the VCN. Example: 172.16.1.0/24. For more information, see
[Overview of the Networking Service](https://docs.cloud.oracle.com/Content/Network/Concepts/overview.htm) and
[VCNs and Subnets](https://docs.cloud.oracle.com/Content/Network/Tasks/managingVCNs.htm).

To use any of the API operations, you must be authorized in an IAM policy. If you're not authorized,
talk to an administrator. If you're an administrator who needs to write policies to give users access, see
[Getting Started with Policies](https://docs.cloud.oracle.com/Content/Identity/Concepts/policygetstarted.htm).

**Warning:** Oracle recommends that you avoid using any confidential information when you
supply string values using the API.

  Here is an example on how to use this:

    oci_core_subnet { 'tenant (root)/my_subnet':
      ensure             => 'present',
      cidr_block         => '10.0.0.0/24',
      dhcp_options       => 'my_compartment/my_dhcp_options',
      dns_label          => 'subnet',
      route_table        => 'my_compartment/my_route_table_',
      security_lists     => ['my_compartment/my_security_list_'],
      subnet_domain_name => 'subnet.vcn.oraclevcn.com',
      vcn                => 'my_compartment/my_vcn',
      virtual_router_ip  => '10.0.0.1',
      virtual_router_mac => '00:00:17:9B:B0:3F',
    }

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).

  DESC

  add_title_attributes(:subnet_name)

  ensurable

  parameter :name
  parameter :subnet_name
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
  property :cidr_block
  property :defined_tags
  property :dhcp_options
  property :dhcp_options_id
  property :dns_label
  property :freeform_tags
  property :ipv6_cidr_block
  property :ipv6_public_cidr_block
  property :ipv6_virtual_router_ip
  property :lifecycle_state
  property :prohibit_public_ip_on_vnic
  property :route_table
  property :route_table_id
  property :security_lists
  property :security_list_ids
  property :subnet_domain_name
  property :time_created
  property :vcn
  property :vcn_id
  property :virtual_router_ip
  property :virtual_router_mac
  property :prohibit_internet_ingress
  property :ipv6_cidr_blocks

  validate do
    validate_reference_propery(:compartment_id, self)
    validate_reference_propery(:dhcp_options_id, self)
    validate_reference_propery(:route_table_id, self)
    validate_reference_propery(:security_list_ids, self)
    validate_reference_propery(:vcn_id, self)
  end
end

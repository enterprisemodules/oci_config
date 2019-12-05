# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:ipv6_public_cidr_block, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  For an IPv6-enabled VCN, this is the IPv6 CIDR block for the VCN's public IP address space.
The VCN size is always /48. This CIDR is always provided by Oracle. If you don't provide a
custom CIDR for the `ipv6CidrBlock` when creating the VCN, Oracle assigns that value and also
uses it for `ipv6PublicCidrBlock`. Oracle uses addresses from this block for the `publicIpAddress`
attribute of an {Ipv6} that has internet access allowed.

Example: `2001:0db8:0123::/48`

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[String[1]]')
end

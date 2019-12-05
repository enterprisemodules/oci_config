# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:ipv6_virtual_router_ip, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  For an IPv6-enabled subnet, this is the IPv6 address of the virtual router.

Example: `2001:0db8:0123:1111:89ab:cdef:1234:5678`

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[String[1]]')
end

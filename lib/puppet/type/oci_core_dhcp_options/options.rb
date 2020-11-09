# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:options, :array_matching => :all, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  A set of DHCP options.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type(<<~DATA_TYPE)
    Optional[Array[
      # The details of the DHCP option
      type Oci_Config::DhcpOption = Struct[{
        Optional['type']              => String[1],
        Optional[server_type]         => String[1],
        Optional[search_domain_names] => Array,
        Optional[custom_dns_servers]  => Array,
      }]]
    ]
  DATA_TYPE
end

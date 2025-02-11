# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:route_rules, :array_matching => :all, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The collection of rules used for routing destination IPs to network devices.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type(<<~DATA_TYPE)
    Optional[
      Array[
        # The details of the route rule
        type Oci_Config::RouteRule = Struct[{
          Optional[route_type]          => String[1],
          Optional[cidr_block]          => String[1],
          Optional[destination]         => String[1],
          Optional[destination_type]    => String[1],
          Optional[network_entity_id]   => String[1],
          Optional[network_entity]      => String[1],
          Optional[network_entity_type] => String[1],
          Optional[description]         => String[1],
        }]
      ]
    ]
  DATA_TYPE
end

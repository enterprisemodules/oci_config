# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:route_table_id, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The OCID of the route table the LPG will use.

If you don't specify a route table here, the LPG is created without an associated route
table. The Networking service does NOT automatically associate the attached VCN's default route table
with the LPG.

For information about why you would associate a route table with an LPG, see
[Transit Routing: Access to Multiple VCNs in Same Region](https://docs.cloud.oracle.com/Content/Network/Tasks/transitrouting.htm).
  Rather use the property `route_table` instead of a direct OCID reference.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[String[1]]')
end

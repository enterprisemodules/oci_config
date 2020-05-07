# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:nsg_ids, :array_matching => :all, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  include EasyType::ArrayProperty
  desc <<-DESC
  A list of the [OCIDs](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the network security groups (NSGs) that this resource belongs to. Setting this to an empty array after the list is created removes the resource from all NSGs. For more information about NSGs, see [Security Rules](https://docs.cloud.oracle.com/Content/Network/Concepts/securityrules.htm).
**NsgIds restrictions:**
- Autonomous Databases with private access require at least 1 Network Security Group (NSG). The nsgIds array cannot be empty.
  Rather use the property `nsgs` instead of a direct OCID reference.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[Array[String]]')
end

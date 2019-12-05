# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:subnet_domain_name, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The subnet's domain name, which consists of the subnet's DNS label,
the VCN's DNS label, and the `oraclevcn.com` domain.

For more information, see
[DNS in Your Virtual Cloud Network](https://docs.cloud.oracle.com/Content/Network/Concepts/dns.htm).

Example: `subnet123.vcn1.oraclevcn.com`

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[String[1]]')
end

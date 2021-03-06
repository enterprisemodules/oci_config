# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:matching_rule, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The matching rule to dynamically match an instance certificate to this dynamic group.
For rule syntax, see [Managing Dynamic Groups](https://docs.cloud.oracle.com/Content/Identity/Tasks/managingdynamicgroups.htm).

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[String]')
end

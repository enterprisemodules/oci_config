# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:lifecycle_state, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The virtual circuit's current state. For information about
the different states, see
[FastConnect Overview](https://docs.cloud.oracle.com/Content/Network/Concepts/fastconnect.htm).

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[String[1]]')
end

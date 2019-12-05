# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:lifecycle_state, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The group's current state. After creating a group, make sure its `lifecycleState` changes from CREATING to
ACTIVE before using it.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[String[1]]')
end

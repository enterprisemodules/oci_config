# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:peer_id, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  If this RPC is peered, this value is the OCID of the other RPC.
  Rather use the property `peer` instead of a direct OCID reference.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[String[1]]')
end

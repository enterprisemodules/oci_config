# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:drg, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The Puppet name of the resource identified by `drg_id`.

  See the documentation of drg_id for all details.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  references :drg_id
  reference_type :drg
  data_type('Optional[String[1]]')
end

child_of(:drg, :drg) { "#{tenant_string}/#{drg}" }

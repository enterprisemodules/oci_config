# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:patch, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  references :patch_id
  reference_type :patch
  data_type('Optional[String]')
end

child_of(:patch, :patch) { "#{tenant_string}/#{patch}" }

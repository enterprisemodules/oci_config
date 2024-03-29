# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:provenance, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  references :provenance_id
  reference_type :provenance
  data_type('Optional[String]')
end

child_of(:provenance, :provenance) { "#{tenant_string}/#{provenance}" }

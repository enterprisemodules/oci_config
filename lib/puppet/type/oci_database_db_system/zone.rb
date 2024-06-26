# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:zone, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  references :zone_id
  reference_type :zone
  data_type('Optional[String]')
end

child_of(:zone, :zone) { "#{tenant_string}/#{zone}" }

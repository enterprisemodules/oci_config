# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:import_drg_route_distribution, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  references :import_drg_route_distribution_id
  reference_type :drg_route_distribution
  data_type('Optional[String]')
end

child_of(:drg_route_distribution, :import_drg_route_distribution) { "#{tenant_string}/#{import_drg_route_distribution}" }
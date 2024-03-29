# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:peer_autonomous_exadata_infrastructure, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  references :peer_autonomous_exadata_infrastructure_id
  reference_type :peer_autonomous_exadata_infrastructure
  data_type('Optional[String]')
end

child_of(:peer_autonomous_exadata_infrastructure, :peer_autonomous_exadata_infrastructure) { "#{tenant_string}/#{peer_autonomous_exadata_infrastructure}" }

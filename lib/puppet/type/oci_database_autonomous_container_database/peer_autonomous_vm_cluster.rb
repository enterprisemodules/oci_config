# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:peer_autonomous_vm_cluster, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  references :peer_autonomous_vm_cluster_id
  reference_type :vm_cluster
  data_type('Optional[String]')
end

child_of(:vm_cluster, :peer_autonomous_vm_cluster) { "#{tenant_string}/#{peer_autonomous_vm_cluster}" }

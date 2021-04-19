# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:source_db_system, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  references :source_db_system_id
  reference_type :source_db_system
  data_type('Optional[String]')
end

child_of(:source_db_system, :source_db_system) { "#{tenant_string}/#{source_db_system}" }

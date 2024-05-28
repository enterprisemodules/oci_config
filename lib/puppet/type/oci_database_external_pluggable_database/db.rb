# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:db, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  references :db_id
  reference_type :db
  data_type('Optional[String]')
end

child_of(:db, :db) { "#{tenant_string}/#{db}" }
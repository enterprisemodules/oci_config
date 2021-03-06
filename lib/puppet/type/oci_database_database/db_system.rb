# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:db_system, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The Puppet name of the resource identified by `db_system_id`.

  See the documentation of db_system_id for all details.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  references :db_system_id
  reference_type :dbsystem
  data_type('Optional[String]')
end

child_of(:dbsystem, :db_system) { "#{tenant_string}/#{db_system}" }

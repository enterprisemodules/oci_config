# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:assigned_entity, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The Puppet name of the resource identified by `assigned_entity_id`.

  See the documentation of assigned_entity_id for all details.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  references :assigned_entity_id
  reference_type :publicip
  data_type('Optional[String[1]]')
end

child_of(:publicip, :assigned_entity) { "#{tenant_string}/#{assigned_entity}" }

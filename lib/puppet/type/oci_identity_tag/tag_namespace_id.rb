# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:tag_namespace_id, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The OCID of the namespace that contains the tag definition.
  Rather use the property `tag_namespace` instead of a direct OCID reference.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[String]')
end
# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:default_security_list, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The Puppet name of the resource identified by `default_security_list_id`.

  See the documentation of default_security_list_id for all details.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  references :default_security_list_id
  reference_type :securitylist
  data_type('Optional[String[1]]')
end

child_of(:securitylist, :default_security_list) { "#{tenant_string}/#{default_security_list}" }

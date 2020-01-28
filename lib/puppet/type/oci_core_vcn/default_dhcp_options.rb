# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:default_dhcp_options, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The Puppet name of the resource identified by `default_dhcp_options_id`.

  See the documentation of default_dhcp_options_id for all details.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  references :default_dhcp_options_id
  reference_type :dhcpoptions
  data_type('Optional[String[1]]')
end

child_of(:dhcpoptions, :default_dhcp_options) { "#{tenant_string}/#{default_dhcp_options}" }

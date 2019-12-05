# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:provider_service, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The Puppet name of the resource identified by `provider_service_id`.

  See the documentation of provider_service_id for all details.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  references :provider_service_id
  reference_type :service
  data_type('Optional[String[1]]')
end

child_of(:service, :provider_service) { "#{tenant_string}/#{provider_service}" }

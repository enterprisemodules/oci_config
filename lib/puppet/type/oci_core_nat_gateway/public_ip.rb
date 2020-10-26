# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:public_ip, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  references :public_ip_id
  reference_type :publicip
  data_type('Optional[String]')
end

child_of(:publicip, :public_ip) { "#{tenant_string}/#{public_ip}" }

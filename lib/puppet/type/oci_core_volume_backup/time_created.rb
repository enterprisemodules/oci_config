# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:time_created, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The date and time the volume backup was created. This is the time the actual point-in-time image
of the volume data was taken. Format defined by RFC3339.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[Runtime]')
end

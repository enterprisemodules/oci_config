# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:public_access_type, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The type of public access enabled on this bucket.
A bucket is set to `NoPublicAccess` by default, which only allows an authenticated caller to access the
bucket and its contents. When `ObjectRead` is enabled on the bucket, public access is allowed for the
`GetObject`, `HeadObject`, and `ListObjects` operations. When `ObjectReadWithoutList` is enabled on the bucket,
public access is allowed for the `GetObject` and `HeadObject` operations.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[String[1]]')
end

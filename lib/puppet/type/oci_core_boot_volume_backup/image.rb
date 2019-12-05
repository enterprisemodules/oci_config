# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:image, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The Puppet name of the resource identified by `image_id`.

  See the documentation of image_id for all details.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  references :image_id
  reference_type :image
  data_type('Optional[String[1]]')
end

child_of(:image, :image) { "#{tenant_string}/#{image}" }

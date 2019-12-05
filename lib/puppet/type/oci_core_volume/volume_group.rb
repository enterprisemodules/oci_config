# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:volume_group, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The Puppet name of the resource identified by `volume_group_id`.

  See the documentation of volume_group_id for all details.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  references :volume_group_id
  reference_type :volumegroup
  data_type('Optional[String[1]]')
end

child_of(:volumegroup, :volume_group) { "#{tenant_string}/#{volume_group}" }

# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:volume_backup, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The Puppet name of the resource identified by `volume_backup_id`.

  See the documentation of volume_backup_id for all details.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  references :volume_backup_id
  reference_type :volumebackup
  data_type('Optional[String[1]]')
end

child_of(:volumebackup, :volume_backup) { "#{tenant_string}/#{volume_backup}" }

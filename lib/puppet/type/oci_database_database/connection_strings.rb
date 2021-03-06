# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:connection_strings, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The Connection strings used to connect to the Oracle Database.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type(<<~DATA_TYPE)
    Optional[
      type Oci_Config::DatabaseConnectionStrings = Struct[{
        Optional[cdb_default]            => String[1],
        Optional[cdb_ip_default]         => String[1],
        Optional[all_connection_strings] => Hash[String, String],
      }]
    ]
  DATA_TYPE
end

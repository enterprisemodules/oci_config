# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:iorm_config_cache, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  data_type(<<~DATA_TYPE)
    Optional[
      type Oci_Config::ExadataIormConfig = Struct[{
        Optional[db_name]           => String[1],
        Optional[share]             => Integer,
        Optional[flash_cache_limit] => String[1],
      }]
    ]
  DATA_TYPE
end

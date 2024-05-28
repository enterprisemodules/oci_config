# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:locks, :array_matching => :all, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  data_type(<<~DATA_TYPE)
  # type Oci_Config::AddLockDetails =#{' '}
  Struct[{
    Optional['type']                => String,
    Optional[related_resource_id] => String,
    Optional[message]             => String,
  }]
  DATA_TYPE
end
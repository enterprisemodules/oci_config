# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:scheduled_operations, :array_matching => :all, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  data_type(<<~DATA_TYPE)
    Optional[
      type Oci_Config::ScheduledOperationDetails = Struct[{
        Optional['day_of_week'] => 'Oci_config::DayOfWeek',
        Optional['scheduled_start_time'] => String,
        Optional['scheduled_stop_time'] => String,
      }]
    ]
  DATA_TYPE
end

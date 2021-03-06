# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:maintenance_window, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  data_type(<<~DATA_TYPE)
    Optional[
      type Oci_Config::MaintenanceWindow = Struct[{
        Optional[preference]     => String[1],
        Optional[months]         => Array[Oci_config::Month],
        Optional[weeks_of_month] => Array[Integer],
        Optional[days_of_week]   => Array[Oci_config::DayOfWeek],
        Optional[hours_of_day]   => Array[Integer],
      }]
    ]
  DATA_TYPE
end

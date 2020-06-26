# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:shape, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The shape of the DB system. The shape determines resources to allocate to the DB system.
- For virtual machine shapes, the number of CPU cores and memory
- For bare metal and Exadata shapes, the number of CPU cores, storage, and memory

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[String]')
end
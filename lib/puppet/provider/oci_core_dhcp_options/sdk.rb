# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
require 'easy_type'

Puppet::Type.type(:oci_core_dhcp_options).provide(:sdk) do
  include EasyType::Provider
  mk_resource_methods
end

# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
require 'puppet_x/enterprisemodules/oci/core'

Puppet::Type.newtype(:oci_identity_tag_default) do
  include Puppet_X::EnterpriseModules::Oci::Type
  desc <<-DESC
  Tag defaults let you specify a default tag (tagnamespace.tag=\"value\") to apply to all resource types
in a specified compartment. The tag default is applied at the time the resource is created. Resources
that exist in the compartment before you create the tag default are not tagged. The `TagDefault` object
specifies the tag and compartment details.

Tag defaults are inherited by child compartments. This means that if you set a tag default on the root compartment
for a tenancy, all resources that are created in the tenancy are tagged. For more information about
using tag defaults, see [Managing Tag Defaults](https://docs.cloud.oracle.com/Content/Identity/Tasks/managingtagdefaults.htm).

To use any of the API operations, you must be authorized in an IAM policy. If you're not authorized,
talk to an administrator.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).

  DESC

  full_regexp           = Regexp.new('^((.*) \\(root\)\\/(.*)\\/(.*):(.*))$')
  top_level_regexp      = Regexp.new('^((.*) \\(root\)\\/(.*):(.*))$')

  map_titles_to_attributes([
                             full_regexp, [:name, :tenant, :compartment, :tag_namespace, :tag_definition],
                             top_level_regexp, [:name, :tenant, :tag_namespace, :tag_definition]
                           ])

  ensurable

  parameter :name
  parameter :tag_default_name
  parameter :tenant
  parameter :oci_timeout
  parameter :oci_wait_interval
  parameter :present_states
  parameter :absent_states
  parameter :synchronized
  # parameter :tag_definition_name
  parameter :compartment
  property  :id
  property  :compartment_id

  property :tag_namespace_id
  property :tag_namespace
  property :tag_definition_id
  property :tag_definition
  property :value
  property :time_created
  property :lifecycle_state
  property :is_required

  validate do
    validate_reference_propery(:compartment_id, self)
    validate_reference_propery(:tag_namespace_id, self)
    validate_reference_propery(:tag_definition_id, self)
  end
end
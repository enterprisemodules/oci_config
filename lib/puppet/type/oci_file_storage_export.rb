# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
require 'puppet_x/enterprisemodules/oci/core'

Puppet::Type.newtype(:oci_file_storage_export) do
  include Puppet_X::EnterpriseModules::Oci::Type
  desc <<-DESC
  A file system and the path that you can use to mount it. Each export
resource belongs to exactly one export set.

The export's path attribute is not a path in the
referenced file system, but the value used by clients for the path
component of the remotetarget argument when mounting the file
system.

The path must start with a slash (/) followed by a sequence of zero or more
slash-separated path elements. For any two export resources associated with
the same export set, except those in a 'DELETED' state, the path element
sequence for the first export resource can't contain the
complete path element sequence of the second export resource.


For example, the following are acceptable:

  * /example and /path
  * /example1 and /example2
  * /example and /example1

The following examples are not acceptable:
  * /example and /example/path
  * / and /example

Paths may not end in a slash (/). No path element can be a period (.)
or two periods in sequence (..). All path elements must be 255 bytes or less.

No two non-'DELETED' export resources in the same export set can
reference the same file system.

Use `exportOptions` to control access to an export. For more information, see
[Export Options](https://docs.cloud.oracle.com/Content/File/Tasks/exportoptions.htm).

**Warning:** Oracle recommends that you avoid using any confidential information when you supply string values using the API.

Here is an example on how to use this:

        oci_file_storage_export { 'tenant (root)/my_compartment:my_export5':
          ensure          => 'present',
          file_system     => 'my_file_system',
          mount_target    => 'my_mount_target',
          export_options  => [
            {
              'source' => '0.0.0.0/0',
              'require_privileged_source_port' => false,
              'access' => 'READ_WRITE',
              'identity_squash' => 'NONE',
              'anonymous_uid' => 65534,
              'anonymous_gid' => 65534
            }],
          }
        }

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).

  DESC

  full_regexp           = Regexp.new("^((.*) \\(root\\)\/(.*):(.*))$")
  top_level_regexp      = Regexp.new("^((.*) \\(root\\):(.*))$")

  map_titles_to_attributes([
                             full_regexp, [:name, :tenant, :compartment, :export_name],
                             top_level_regexp, [:name, :tenant, :export_name]
                           ])
  #
  # The include files contain specific non-generated code for the types
  #
  include_file "puppet/type/#{name}/before_actions", binding

  ensurable

  parameter :name
  parameter :export_name
  parameter :tenant
  parameter :oci_timeout
  parameter :oci_wait_interval
  parameter :present_states
  parameter :absent_states
  parameter :synchronized
  parameter :compartment
  property  :id
  property  :compartment_id
  parameter :mount_target_id
  parameter :mount_target

  property :export_options
  property :file_system
  property :file_system_id
  property :lifecycle_state
  property :path
  property :time_created

  validate do
    validate_reference_propery(:file_system_id, self)
  end
end

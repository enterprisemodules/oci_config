# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#

def before_destroy
  memberships = client.list_user_group_memberships(provider.compartment_id, :user_id => provider.id).data
  Puppet.debug "Removing user #{name} from groups"
  memberships.each { |m| handle_oci_request(:groupmembership, false) { client.remove_user_from_group(m.id) } }
end

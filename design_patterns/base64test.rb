require 'base64'

userdata = %{#!/bin/bash
/cloudscape/chef-add-role.sh cloudscape_monitor
}

puts Base64.encode64(userdata)

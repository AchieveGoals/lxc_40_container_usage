# name: acloud_vs_ucloud_lxc_lifecycle.sh
#
# To run:
#    bash acloud_vs_ucloud_lxc_lifecycle.sh

# 12-01-2022 commit
# Larry Timmins, larry.timmins@gmail.com, 12-01-2022 
# License: Apache 2.0 (see NOTICE file)
# Non-commercial use only; any other use must get written permission from author

date
lxc launch images:almalinux/9/cloud acloud009
lxc launch images:ubuntu/focal/cloud ucloud020
lxc ls
#lxc exec acloud009 -- /bin/bash #// use exit to return
#lxc exec acloud009 -- bash -c "the command with | pipe"
lxc exec acloud009 -- bash -c "cat /etc/os-release | grep PRETTY_NAME"
lxc exec ucloud020 -- bash -c "cat /etc/os-release | grep PRETTY_NAME"
lxc exec acloud009 -- bash -c "uname -a ; hostname ; df -h | grep -v snap"
lxc exec ucloud020 -- bash -c "uname -a ; hostname ; df -h | grep -v snap"
lxc exec acloud009 -- bash -c "cat /etc/os-release; cat /etc/redhat-release"
lxc exec ucloud020 -- bash -c "cat /etc/os-release"
lxc ls
#lxc-destroy -n acloud009
#lxc-destroy -n ucloud020
lxc delete acloud009 --force
lxc ls
lxc delete ucloud020 --force
lxc ls
date

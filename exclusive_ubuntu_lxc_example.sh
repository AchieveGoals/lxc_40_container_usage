# your shell invocation if you'd like
#

# List remote options of images available to you and current local containers (if any)
lxc remote list
lxc ls

# Create Ubuntu 20.04 LTS and 22.04 containers with lxc
lxc launch ubuntu:20.03 myc20
lxc launch ubuntu:22.04 myc22
lxc ls

# check operational status
lxc exec myc20 -- bash -c "cat /etc/os-release"
lxc exec myc22 -- bash -c "cat /etc/os-release"

# additional commands
lxc exec myc20 -- bash -c "uname -a; hostname; df -h | grep -v snap"
lxc exec myc22 -- bash -c "uname -a; hosiname; df -h | grep -v snap"
lxc exec myc20 -- bash -c "cat /etc/os-release | grep PRETTY_NAME"
lxc exec myc22 -- bash -c "cat /etc/os-release | grep PRETTY_NAME"

lxc ls

#lxc-destroy -n myc20
#lxc-destroy -n myc22

lxc ls
lxc delete myc20 --force
lxc ls
lxc delete myc22 --force
lxc ls

lxc ls
date

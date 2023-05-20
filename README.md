# lxc_40_container_usage
Bash script to demonstrate Alma and Ubuntu Linux LXC Containers and Destruction

## Purpose

I wanted to have reference bash commands to launch both Ubuntu and Alma Linux 9 LXC 4.0 Containers and I wanted to use the 'lxc' command line interface to LXD 4.0.

12.01.2022  On Ubuntu Linux labtop, I installed latest lxc, lxd and zfsutils-linux packages.

When I ran ```lxd init```, I selected version 4.0 over 3.0.

After running lxd init, I noticed the traditional lxc-destroy, and other commands didn't work.

NOTE:  If you run shell script, but remember to remove the containers eventually 8^)
  ```lxc ls```
  ```lxc delete <containername> --force```

## BASH SCRIPTS FOR DEMO LIFE CYCLE USE OF LXC CLI for LXD 4.0

1. "acloud_vs_ucloud_lifecycle.sh" - This script provides the updated commands needed after performing lxd init and selecting the recommended 4.0 version.
2. Creates Alma Linux 9 Cloud LXC container
3. Creates Ubuntu Linux 20 / Fossa Focal LXC Container
4. Uses ```lxc exec``` to run similar commands against both Alma Linux and Ubuntu Linux 
5. Make liberal use of ```lxc ls``` to illustrate new containers 
6. Complete life cycle by removing created LXC containers after last bash commands run against containers
7. Note:  Updated to replace ```lxc-destroy -n name``` with ```lxc delete <containername> --force```
## Comments welcome.

## TODO:
  - Add Pre-requistes and quick install instructions
  - Provide OSHowTo Tabbed web page for Mac, Ubuntu, Alma, Redhat, WSL
  - Add more scripts to demonstrate applications with secured configuration best practices (in this repo or a peer repo).

/ LJT 12-01-2022

## Supplemental Notes
/ LJT 05-18-2023
If you run this command with this image, what have your bargained for?
  ```lxc launch images:almalinux/9/cloud acloud-container```

### Understand Limitation using Cloud version of AlmaLinux
Is it secure?   
  - "cloud-user" - research it
  - By default, no firewalld
  - By default, no semanag

### Read the release notes for RHEL 9.0, RHEL 9.1, (by now, RHEL 9.2)

### Attend or view LEAPP RHEL7 to RHEL8, and RHEL8 to RHEL9 updated this May 2023
  - A lot of good folks at Red Hat have been building a lowest common denominator means to upgrade existing servers to the next major version of RHEL. No matter if that appeals to you, there is a lot of infomration gathered, decision mades of what packages are dropped, commands replaced and more deprecated. 
 
 ## TODO II
   - Completed Google Authenticator lab with Ansible and multiple containers with non-standard SSH port with MFA access, custom /etc/sudoers and /etc/ssh/sshd_config customizations.
   -




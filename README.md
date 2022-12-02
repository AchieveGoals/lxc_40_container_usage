# lxc_40_container_usage
Bash script to demonstrate Alma and Ubuntu Linux LXC Containers and Destruction

## Purpose

I wanted to have reference bash commands to launch both Ubuntu and Alma Linux 9 LXC 4.0 Containers and I wanted to the use the 'lxc' command line interface to LXD.

12.01.2022  On Ubuntu Linux labtop, I installed latest lxc, lxd and zfsutils-linux packages.

When I ran ```lxd init```, I selected version 4.0 over 3.0.

After running lxd init, I noticed the traditional lxc-destroy, and other commands didn't work.

## BASH SCRIPTS FOR DEMOSTRATING LIFE CYCLE USE OF LXC CLI for LXD 4.0

1. "acloud_vs_ucloud_lifecycle.sh" - This script provides the updated commands needed after performing lxd init and selecting the recommended 4.0 version.

## Comments welcome.

## TODO:
  - Add Pre-requistes and quick install instructions
  - Provide OSHowTo Tabbed web page for Mac, Ubuntu, Alma, Redhat, WSL
  - Add more scripts to demonstrate applications with secured configuration best practices (in this repo or a peer repo).

/ LJT 12-01-2022

# lxc_40_container_usage
Bash script to demonstrate Alma and Ubuntu Linux LXC Containers and Destruction

### Note: "exclusive_ubuntu_lxc_example.sh" gives Ubuntu users way to still launch Ubuntu only images.

## OUCH LXD DROPPED ACCESS TO IMAGES
Bad news -- as a Canonical staff member left, Canonical failed to pick up the investment in the community as of November.  To their credit, Linux Containers.org kept up access until very recently.

My luck that I just found out today (3/27/2024) via this link after images failed to load: 

https://discuss.linuxcontainers.org/t/important-notice-for-lxd-users-image-server/18479

## OUCH (BANDAID) II

Seems like Canonical will still support ubuntu and ubuntu-daily access, but is not longer a global Linux player.

All UBuntu references to /containers/lxc and /containers/lxd yield HTTP 40x errors 

```
tim@entwash:~/vc/2024$ lxc remote list
+-----------------+------------------------------------------+---------------+-------------+--------+--------+
|      NAME       |                   URL                    |   PROTOCOL    |  AUTH TYPE  | PUBLIC | STATIC |
+-----------------+------------------------------------------+---------------+-------------+--------+--------+
| images          | https://images.linuxcontainers.org       | simplestreams | none        | YES    | NO     |
+-----------------+------------------------------------------+---------------+-------------+--------+--------+
| local (current) | unix://                                  | lxd           | file access | NO     | YES    |
+-----------------+------------------------------------------+---------------+-------------+--------+--------+
| ubuntu          | https://cloud-images.ubuntu.com/releases | simplestreams | none        | YES    | YES    |
+-----------------+------------------------------------------+---------------+-------------+--------+--------+
| ubuntu-daily    | https://cloud-images.ubuntu.com/daily    | simplestreams | none        | YES    | YES    |
+-----------------+------------------------------------------+---------------+-------------+--------+--------+
```

So this no longer works (i.e. images no longer maps to https://images.linuxcontainers.org)
```
tim@entwash:~/vc/2024$ lxc launch images:almalinux/9/cloud a9
```
## OUCH (BANDAID) III  - 2024-03-28
So much for cross-platform support agreement with Canonical and Linuxcontaimers.org

### GOOD NEWS - you can still spin up Ubuntu (see 20.04 and 22.04 examples)

```
tim@entwash:~/vc/2024/ubuntu-lts$ lxc launch ubuntu:20.04 myc20
Creating myc20
Starting myc20                              
tim@entwash:~/vc/2024/ubuntu-lts$ lxc ls
+-------+---------+---------------------+------+-----------+-----------+
| NAME  |  STATE  |        IPV4         | IPV6 |   TYPE    | SNAPSHOTS |
+-------+---------+---------------------+------+-----------+-----------+
| myc20 | RUNNING | 10.117.122.9 (eth0) |      | CONTAINER | 0         |
+-------+---------+---------------------+------+-----------+-----------+
tim@entwash:~/vc/2024/ubuntu-lts$
tim@entwash:~/vc/2024/ubuntu-lts$ lxc launch ubuntu:22.04 myc22
Creating myc22
Starting myc22                                
tim@entwash:~/vc/2024/ubuntu-lts$ lxc ls
+-------+---------+----------------------+------+-----------+-----------+
| NAME  |  STATE  |         IPV4         | IPV6 |   TYPE    | SNAPSHOTS |
+-------+---------+----------------------+------+-----------+-----------+
| myc20 | RUNNING | 10.117.122.9 (eth0)  |      | CONTAINER | 0         |
+-------+---------+----------------------+------+-----------+-----------+
| myc22 | RUNNING | 10.117.122.15 (eth0) |      | CONTAINER | 0         |
+-------+---------+----------------------+------+-----------+-----------+
tim@entwash:~/vc/2024/ubuntu-lts$ 


```


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




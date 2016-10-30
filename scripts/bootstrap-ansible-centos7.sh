#!/bin/bash
## From: https://www.liquidweb.com/kb/how-to-install-ansible-on-centos-7-via-yum/
sudo yum -y update
sudo rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm
sudo yum -y update
# Required if you are using Fedora/CentOS and the new dnf module 
sudo yum install python2-dnf
sudo yum install ansible
ansible --version

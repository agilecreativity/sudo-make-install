#!/bin/bash
## http://tecadmin.net/install-postgresql-9-5-on-centos/#
## Adding PostgreSQL Yum Repository
sudo rpm -Uvh http://yum.postgresql.org/9.5/redhat/rhel-7-x86_64/pgdg-centos95-9.5-2.noarch.rpm

## Install the PostgreSQL server
sudo yum install -y postgresql95-server postgresql95

## Initializing PGDATA
sudo /usr/pgsql-9.5/bin/postgresql95-setup initdb

## Start/running the PostgreSQL server
## for CentOS 7.x
sudo systemctl start postgresql-9.5
sudo systemctl enable postgresql-9.5

## For CentOS 6.x,
##sudo service  postgresql-9.5 start
##sudo chkconfig postgresql-9.5 on

## Verify the installation
#sudo su - postgres
#psql

## Note:
## Then you may change the password for user `postgres` by
#sudo su -
#passwd postgres

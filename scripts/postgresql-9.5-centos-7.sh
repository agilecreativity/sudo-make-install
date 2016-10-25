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

## Verify and setup the password for user 'postgres'
## sudo -u postgres psql
## \password postgres
## \q
## If this does not work then try to edit
## /etc/postgresql/9.5/main/pg_hba.conf (or similar)
## change the line from
## local all all peer
## to
## local all all md5
## host all all 192.168.0.0/24 md5
## You may need to
## sudo systemctl restart postgresql-9.5

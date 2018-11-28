#!/bin/bash
mysql -u root -e "CREATE DATABASE IF NOT EXISTS '$1' CHARSET $2;"
mysql -u root -e "GRANT ALL ON $1.* TO $3@localhost IDENTIFIED BY '$4';"

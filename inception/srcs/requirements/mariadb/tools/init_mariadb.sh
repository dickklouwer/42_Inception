#!/bin/bash

service mysql start

# Setting up initial databases and users
cat << EOF > init.sql
    CREATE DATABASE IF NOT EXISTS $DATABASE;
    
    CREATE USER IF NOT EXISTS '$DATABASE_USER'@'%' IDENTIFIED BY '$DATABASE_PASSWORD';
    GRANT ALL ON $DATABASE.* to '$DATABASE_USER'@'%';
    FLUSH PRIVILEGES;

    ALTER USER 'root'@'localhost' IDENTIFIED BY '$DATABASE_PASSWORD';
    FLUSH PRIVILEGES;

EOF

    # Execute SQL script
mysql < init.sql

mysqld
#!/bin/bash

docker exec mysql_l20 sh -c "mkdir /var/lib/mysql/backups"
docker exec mysql_l20 sh -c "mysqldump --flush-logs --delete-master-logs --single-transaction -uroot -p111 -hlocalhost mydb > /var/lib/mysql/backups/mydb.sql"

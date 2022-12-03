#!/bin/bash

docker exec mysql_l20 sh -c "mysql -uroot -p111 -hlocalhost DROP DATABASE IF EXISTS mydb;"
start=`date +%s`
docker exec mysql_l20 sh -c "mysql -uroot -p111 -hlocalhost mydb < /var/lib/mysql/backups/mydb.sql"
end=`date +%s`

runtime=$((end-start))
echo "runtime:$runtime";

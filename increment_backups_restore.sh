#!/bin/bash
start=`date +%s`
for file in $(<log/mysql_l20/binlog.index); do docker exec mysql_l20 sh -c "mysqlbinlog --no-defaults -dmydb ${file} | mysql -uroot -p111 -hlocalhost mydb"; done
end=`date +%s`

runtime=$((end-start))
echo "runtime:$runtime";

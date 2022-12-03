#!/bin/bash

start=`date +%s`
id=1
for i in {1..500000}
do
docker exec mysql_l20 sh -c "export MYSQL_PWD=111; mysql -u root mydb -e 'insert into code values (100, 150, 200, NOW()), (250, 300, 350,NOW())'"
  id=$(( $id + 1 ))
done
end=`date +%s`

runtime=$((end-start))
echo "runtime:$runtime";
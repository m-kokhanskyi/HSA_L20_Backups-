#!/bin/bash

docker-compose down -v
docker-compose build
docker-compose up -d

until docker exec mysql_l20 sh -c 'export MYSQL_PWD=111; mysql -u root -e ";"'
do
    echo "Waiting for mysql_l20 database connection..."
    sleep 4
done
docker exec mysql_l20 sh -c "export MYSQL_PWD=111; mysql -u root mydb -e 'create table code(first int, middle int, last int, ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP); insert into code values (100, 150, 200, NOW()), (250, 300, 350,NOW())'"

#!/bin/bash

#!/bin/sh

# set up the database credentials
DB_USER=root
DB_PASSWORD=111
# flush the current log and start writing to a new binary log file
docker exec mysql_l20 sh -c "mysql -u$DB_USER -p$DB_PASSWORD -E --execute='FLUSH BINARY LOGS;' mysql"
BINLOGS=$(docker exec mysql_l20 sh -c "mysql -u$DB_USER -p$DB_PASSWORD -E --execute='SHOW BINARY LOGS;' mysql | grep Log_name | sed -e 's/Log_name://g' -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'")

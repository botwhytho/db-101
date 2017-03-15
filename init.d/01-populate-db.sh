#!/bin/sh

if [ -f ./sql-data-dump/*.sql ]; then

echo "Populating $POSTGRES_DB db"
psql -U postgres $POSTGRES_DB < /pg-dump/pg_dump.2017-02-28.sql

else
echo "No files found. No database being imported. You can use the test data metabase comes with."
fi

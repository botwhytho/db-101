#!/bin/sh

echo "Populating RC-Directory db"

psql -U postgres RC-Directory < /pg-dump/pg_dump.2017-02-28.sql

#!/bin/sh

set -e
echo "run db migtation"
/app/migrate -path /app/migtation -database "$DB_SOURCE" -verbose up

echo "start the app"
exec "$@"
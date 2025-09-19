set -e

pg_restore \
    -v \
    --no-owner \
    --no-privileges \
    -U $POSTGRES_USER \
    -d $POSTGRES_DB \
    /docker-entrypoint-initdb.d/data.dump


#!/bin/bash
set -euxo pipefail

TIME=$(date "+%s")
FILENAME_ENDING="jstetcmscontent__${TIME}.pgdump"
FILENAME="/home/{{ansible_user}}/db_backup/${FILENAME_ENDING}"

echo "------BACKUP: $TIME---------"

mc alias set miniomain {{s3_endpoint}} {{s3_access_key}} {{s3_secret_key}}

sudo find /home/{{ansible_user}}/db_backup -mtime +7 -type f -exec rm -f {} \;

echo "Backing up content to $FILENAME"
docker exec -e PGPASSWORD="directus" directus-database pg_dump --username directus --dbname directus > $FILENAME

echo "Copying $FILENAME to {{s3_endpoint}}"

mc cp $FILENAME miniomain/{{s3_bucket}}/${FILENAME_ENDING}

TIME=$(date "+%s")
echo "Backup completed: $TIME"

echo "---------------"
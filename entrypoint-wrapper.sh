#!/bin/bash

USER=$(cat /run/secrets/mattermost_secret_postgresql_user)
PASSWORD=$(cat /run/secrets/mattermost_secret_postgresql_password)
DB=$(cat /run/secrets/mattermost_secret_postgresql_db)

export MM_SQLSETTINGS_DATASOURCE="postgres://${USER}:${PASSWORD}@postgres:5432/${DB}?sslmode=disable&connect_timeout=10"

exec /entrypoint.sh "$@"
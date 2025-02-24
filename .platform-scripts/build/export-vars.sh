#!/bin/sh

export DATABASE_HOST="mariadb"
export DATABASE_PORT="1234"
export DATABASE_USER="user"
export DATABASE_PASSWORD="pass"
export DATABASE_DBNAME="pimcore"
export REDIS_HOST="redis"
export REDIS_PORT="1234"
export GOTENBERG_IP="1.2.3.4"
export GOTENBERG_PORT="1234"
export PIMCORE_ES_CLIENT_HOST="elastic:1234"
export PIMCORE_ES_CLIENT_USERNAME="user"
export PIMCORE_ES_CLIENT_PASS="pass"
export PIMCORE_ENCRYPTION_SECRET="xyz"
export CHROMIUM_HOST="chrome"
export CHROMIUM_PORT="1234"
export RABBITMQ_URL="amqp://user:pass@rabbitmq:1234"
export MERCURE_URL=$(echo $PLATFORM_ROUTES | base64 --decode | jq -r 'to_entries[] | select(.value.id == "mercure") | .key' | awk '{print substr($0, 0, length($0))}')
export PIMCORE_OPENSEARCH_CLIENT_HOST="https://opensearch:9200"

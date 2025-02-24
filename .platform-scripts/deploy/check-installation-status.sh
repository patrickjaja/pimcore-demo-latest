#!/bin/bash

set -e

#if [ ! -f var/.platform.installed ]; then

    export PIMCORE_INSTALL_MYSQL_DATABASE=$(echo $PLATFORM_RELATIONSHIPS | base64 --decode | jq -r ".database[0].path")
    export PIMCORE_INSTALL_MYSQL_HOST_SOCKET=$(echo $PLATFORM_RELATIONSHIPS | base64 --decode | jq -r ".database[0].host")
    export PIMCORE_INSTALL_MYSQL_PORT=$(echo $PLATFORM_RELATIONSHIPS | base64 --decode | jq -r ".database[0].port")
    export PIMCORE_INSTALL_MYSQL_USERNAME=$(echo $PLATFORM_RELATIONSHIPS | base64 --decode | jq -r ".database[0].username")
    export PIMCORE_INSTALL_MYSQL_PASSWORD=$(echo $PLATFORM_RELATIONSHIPS | base64 --decode | jq -r ".database[0].password")

    php ./vendor/bin/pimcore-install --no-interaction \
        --no-debug
#        \
#        --only-steps=setup_database,mark_migrations_as_done

    php bin/console doctrine:migrations:sync-metadata-storage --no-interaction --ignore-maintenance-mode

    export MYSQL_HOST=$PIMCORE_INSTALL_MYSQL_HOST_SOCKET
    export MYSQL_TCP_PORT=$PIMCORE_INSTALL_MYSQL_PORT
    export MYSQL_PWD=$PIMCORE_INSTALL_MYSQL_PASSWORD

    mysql -u $PIMCORE_INSTALL_MYSQL_USERNAME $PIMCORE_INSTALL_MYSQL_DATABASE -e"\
        DROP TABLE IF EXISTS sessions;
        CREATE TABLE sessions (sess_id VARBINARY(128) NOT NULL PRIMARY KEY, \
        sess_data BLOB NOT NULL, \
        sess_lifetime INTEGER UNSIGNED NOT NULL, \
        sess_time INTEGER UNSIGNED NOT NULL, \
        INDEX sessions_sess_lifetime_idx (sess_lifetime)) COLLATE utf8mb4_bin, ENGINE = InnoDB;"

    touch var/.platform.installed

#fi

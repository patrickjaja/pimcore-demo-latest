#!/bin/bash

composer config --global --auth http-basic.repo.pimcore.com token $PIMCORE_TOKEN
COMPOSER_MEMORY_LIMIT=-1 composer install --no-ansi --no-progress --prefer-dist --no-scripts
#!/bin/bash

set -ex

php ./bin/console cache:clear --no-interaction --ignore-maintenance-mode

rm -f ./var/config/maintenance.php
mkdir -p var/config
echo '<?php return ["sessionId" => "command-line-dummy-session-id"];' >> var/config/maintenance.php

php ./bin/console pimcore:deployment:classes-rebuild --create-classes --no-interaction --ignore-maintenance-mode

php ./bin/console doctrine:migrations:migrate --prefix=Pimcore\\Bundle\\CoreBundle --no-interaction --ignore-maintenance-mode

php ./bin/console doctrine:migrations:migrate --no-interaction --ignore-maintenance-mode

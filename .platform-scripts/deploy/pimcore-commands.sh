#!/bin/bash

set -ex

php ./bin/console cache:clear --no-interaction --ignore-maintenance-mode

rm -f ./var/config/maintenance.php
mkdir -p var/config
echo '<?php return ["sessionId" => "command-line-dummy-session-id"];' >> var/config/maintenance.php

#php ./bin/console pimcore:deployment:classes-rebuild --create-classes --no-interaction --ignore-maintenance-mode

#php ./bin/console doctrine:migrations:migrate --prefix=Pimcore\\Bundle\\CoreBundle --no-interaction --ignore-maintenance-mode

#php ./bin/console doctrine:migrations:migrate --no-interaction --ignore-maintenance-mode

php ./bin/console app:auto-map-json -i data/example/product_model.json -o config/pimcore/class_StaticImportedProductType1_export.json -p data/prompt/model_prompt.md  --ignore-maintenance-mode
php ./bin/console pimcore:definition:import:class config/pimcore/class_StaticImportedProductType1_export.json  --ignore-maintenance-mode

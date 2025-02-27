#!/bin/bash

set -ex

php ./bin/console cache:clear --no-interaction --ignore-maintenance-mode

rm -f ./var/config/maintenance.php
mkdir -p var/config
cp -R ./config/pimcore/classes_del/* var/classes # remember: copy classes manually from var/classes to classes_del
echo '<?php return ["sessionId" => "command-line-dummy-session-id"];' >> var/config/maintenance.php

php ./bin/console pimcore:deployment:classes-rebuild --create-classes --no-interaction --ignore-maintenance-mode

#php ./bin/console doctrine:migrations:migrate --prefix=Pimcore\\Bundle\\CoreBundle --no-interaction --ignore-maintenance-mode

#php ./bin/console doctrine:migrations:migrate --no-interaction --ignore-maintenance-mode

#php ./bin/console app:auto-map-json -i data/example/product_model.json -o localCache/class_StaticImportedProductType1_export.json -p data/prompt/model_prompt.md  --ignore-maintenance-mode
#php ./bin/console pimcore:definition:import:class -f localCache/class_StaticImportedProductType1_export.json  --ignore-maintenance-mode
#
#
#php ./bin/console app:auto-map-data-json -i data/example/product_data.json -o localCache/data_StaticImportedProductType1_export.json -s localCache/class_StaticImportedProductType1_export.json -p data/prompt/data_prompt.md   --ignore-maintenance-mode
#php ./bin/console app:import-data-command -m localCache/class_StaticImportedProductType1_export.json -d localCache/data_StaticImportedProductType1_export.json --ignore-maintenance-mode

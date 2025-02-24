#!/bin/bash

echo "Installing Pimcore bundles which are not installed but installable"

./bin/console cache:clear --no-interaction --ignore-maintenance-mode

BUNDLES="$(
  ./bin/console pimcore:bundle:list --ignore-maintenance-mode --json --no-debug --env=prod | 
  jq --raw-output '
    [
      .[]
      | select(
        .Enabled == true
        and .Installed == false
        and .Installable == true
      )
      | .Bundle
    ]
    | join(" ")
  '
)"

#Check if bundles need to installed
if [ -z "${BUNDLES}" ]; then
    echo "No bundles to install"
    exit;
fi

# Install Pimcore bundles
for BUNDLE in ${BUNDLES}; do
  bin/console pimcore:bundle:install "${BUNDLE}" --ignore-maintenance-mode --no-interaction --no-post-change-commands 
done
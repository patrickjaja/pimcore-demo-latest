#!/bin/bash

set -e

if [ ! -d "${PLATFORM_APP_DIR}/var/tmp" ]; then

  mkdir -p ${PLATFORM_APP_DIR}/var/tmp
  
fi

# Check Pimcore installation status and install if not installed
./.platform-scripts/deploy/check-installation-status.sh

# Install Pimcore bundles which are not installed but installable
./.platform-scripts/deploy/install-bundles.sh

# Run pimcore commands
./.platform-scripts/deploy/pimcore-commands.sh

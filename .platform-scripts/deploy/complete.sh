#!/bin/bash

set -ex

php ./bin/console pimcore:maintenance-mode --disable --ignore-maintenance-mode

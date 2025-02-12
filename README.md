# Demo and Blue Print Application for Pimcore

This demo package is intended to be used by Pimcore newcomers who want to learn Pimcore and see it in action. 
It's tailored get an overview of Pimcores CMS, DAM, PIM and E-Commerce functionality and can be used as a blue print for 
E-Commerce Applications built with Pimcore. If you are an experienced Pimcore developer, have a look at the Skeleton linked below instead.

## Getting started 
```bash
COMPOSER_MEMORY_LIMIT=-1 composer create-project --no-scripts pimcore/demo my-project
cd ./my-project
./bin/console assets:install --symlink --relative
./vendor/bin/pimcore-install
./bin/console cache:clear
```

- Point your virtual host to `my-project/public`
- [Only for Apache] Create `my-project/public/.htaccess` according to https://pimcore.com/docs/platform/Pimcore/Installation_and_Upgrade/System_Setup_and_Hosting/Apache_Configuration/ 
- Open https://your-host/admin in your browser
- Done! 😎


## Docker

You can also use Docker to setup a new Pimcore Installation.
You don't need to have a PHP environment with composer installed.

### Prerequisits

* Your user must be allowed to run docker commands (directly or via sudo).
* You must have docker-compose installed.
* Your user must be allowed to change file permissions (directly or via sudo).

### Follow these steps

1. Initialize the demo project using the `pimcore/pimcore` image
    ``docker run -u `id -u`:`id -g` --rm -v `pwd`:/var/www/html pimcore/pimcore:php8.3-latest composer create-project --no-scripts pimcore/demo my-project``
1. Go to your new project
    `cd my-project/`
1. Part of the new project is a docker compose file
    * Run `` echo `id -u`:`id -g` `` to retrieve your local user and group id
    * Open the `docker-compose.yaml` file in an editor, uncomment all the `user: '1000:1000'` lines and update the ids if necessary
    * Start the needed services with `docker compose up -d`
    * Install the assets by running the script `docker compose exec php bin/console assets:install --symlink --relative`
1. Install pimcore and initialize the DB
    `docker compose exec php vendor/bin/pimcore-install --mysql-host-socket=db --mysql-username=pimcore --mysql-password=pimcore --mysql-database=pimcore`
    * When asked for admin user and password: Choose freely
    * This can take a while, up to 20 minutes
1. Clear and warm up the cache with `docker compose exec php bin/console cache:clear`
1. :heavy_check_mark: DONE - You can now visit your pimcore-demo:
    * The frontend: <http://localhost>
    * The admin interface, using the credentials you have chosen above:
      <http://localhost/admin>

## Pimcore Platform Version
By default, Pimcore Platform Version is added as a dependency which ensures installation of compatible and in combination 
with each other tested versions of additional Pimcore modules. More information about the Platform Version can be found in the 
[Platform Version docs](https://github.com/pimcore/platform-version). 

It might be necessary to update a specific Pimcore module to a version that is not included in the Platform Version.
In that case, you need to remove the `platform-version` dependency from your `composer.json` and update the module to
the desired version.
Be aware that this might lead to a theoretically compatible but untested combination of Pimcore modules.

## Other demo/skeleton packages
- [Pimcore Skeleton](https://github.com/pimcore/skeleton/)


## personal notes
 ### start xdebug
 - php -d xdebug.mode=debug -d xdebug.client_host=172.23.0.1 -d xdebug.client_port=9003 -d xdebug.idekey="PHPSTORM" -d xdebug.start_with_request=yes bin/console  pimcore:definition:import:class class.json
 - docker-compose down --volumes
 - docker compose exec php vendor/bin/pimcore-install --mysql-host-socket=db --mysql-username=pimcore --mysql-password=pimcore --mysql-database=pimcore --skip-database-data --skip-database-data-dump
 - example preview url http://localhost/en/shop/Products/coffee-filters/EN-MelittaR-Original--100--braun--40-St~p1193?pimcore_object_preview=1193&dc=1739303623
 - http://localhost/en/shop/Products/EN-MelittaR-Original--100--braun--40-St~p1193

PimCore Project Stack Notes
 - https://docs.pimcore.com/platform/Pimcore/Deployment/Deployment_Tools/#potentially-useful-commands
 - https://docs.pimcore.com/platform/Workflow_Automation/Work_with_WAI

ToDo:
 - create fork of original demo project
   - automatically delete product data
   - automatically add passed ai product data


AI Generated Demo Data (base https://github.com/pimcore/demo):
- ``docker run -u `id -u`:`id -g` --rm -v `pwd`:/var/www/html pimcore/pimcore:php8.3-latest composer create-project --no-scripts patrickjaja/pimcore-demo-latest my-project`` (create database and user)
- ``pimcore-install --mysql-host-socket=db --mysql-username=pimcore --mysql-password=pimcore --mysql-database=pimcore`` (create database and user)
- ``bin/console pimcore:definition:import:class class_ExampleProductType_export.json`` (create new product type)
- ``bin/console pimcore:definition:import:objectbrick objectbrick_SaleInformation_export.json``  (attach sales object to new product type)
- ``bin/console app:data-command data_ExampleProductType_export.json`` (import product for new product type)
- check http://localhost/admin -> data objects -> Product Data for new imported product (use preview do check rendered pdp)

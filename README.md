# Demo and Blueprint Application for Pimcore AI-Driven E-commerce

This demo package showcases a basic implementation of an AI agent-driven e-commerce experience, starting with a customer request.  It is a work in progress and should not be considered production-ready.  Many standard e-commerce and Pimcore functionalities are still undeveloped.  **This is an unmaintained fork and should not be used in production environments.**

**Key Features Demonstrated:**

*   Automated domain model creation.
*   Automated creation of products.

**Features Not Covered:**

*   CMS pages
*   Customer-specific CI
*   AI-generated product detail pages (varied structures) (Twig templates)
*   Product listing pages and categories
*   Shopping cart and checkout process
*   Customer accounts and management
*   Order management
*   ...and many other standard e-commerce features

**Architecture Overview:**

[Target_Architecture.drawio.png](Target_Architecture.drawio.png)

**Architecture Overview:**

 - [Target_Architecture.drawio.png](Target_Architecture.drawio.png)

**Screenshots:**

 - [2025-02-15_19-34.png](2025-02-15_19-34.png)
 - [2025-02-15_19-35.png](2025-02-15_19-35.png)
 - [2025-02-15_19-35_1.png](2025-02-15_19-35_1.png)
 - [2025-02-15_19-35_2.png](2025-02-15_19-35_2.png)

**Installation:**

This project is based on the Pimcore demo project (https://github.com/pimcore/demo).  Follow these steps:

1.  **Create Project:** (Base)
    ```bash
    docker run -u `id -u`:`id -g` --rm -v `pwd`:/var/www/html pimcore/pimcore:php8.3-latest composer create-project --no-scripts patrickjaja/pimcore-ai-demo my-project
    ```
    *(This command also handles database and user creation within the Docker environment.)*

2.  **Install Assets:** (Base)
    ```bash
    docker compose exec php vendor/bin/console assets:install --symlink --relative
    ```

3.  **Install Pimcore:** (Base)
    ```bash
    docker compose exec php vendor/bin/pimcore-install --mysql-host-socket=db --mysql-username=pimcore --mysql-password=pimcore --mysql-database=pimcore
    ```

4.  **Clear Cache:** (Base)
    ```bash
    docker compose exec php vendor/bin/console cache:clear
    ```

5.  **Convert AI generated Schema to PimCore schema Definition & import it:** (exemplary)
    ```bash
    # add your OPEN_ROUTER api key in .env file
    docker compose exec php bin/console app:auto-map-json -i data/product_model_1.json -o cache/generated/class_StaticImportedProductType1_export.json -p data/prompt/model_prompt.md
    docker compose exec php bin/console pimcore:definition:import:class cache/generated/class_StaticImportedProductType1_export.json
    ```

6.  **Convert AI generated data to PimCore product schema specific data & import it:** (exemplary)
    ```bash
    docker compose exec php bin/console app:auto-map-data-json -i data/product_data_1.json -o cache/generated/data_StaticImportedProductType1_export.json -s cache/generated/class_StaticImportedProductType1_export.json -p data/prompt/data_prompt.md
    docker compose exec php bin/console app:import-data-command -m cache/generated/class_StaticImportedProductType1_export.json -d cache/generated/data_StaticImportedProductType1_export.json
    ```

7.  **Verify Installation:** Access the Pimcore admin interface at http://localhost/admin. Navigate to "Data Objects" -> "Product Data" to view the imported product.

**Data Structures:**

*   **Pimcore Class Import:**  Defines the object data structures. ([class_ExampleProductType_export.json](class_ExampleProductType_export.json))
*   **Pimcore Object Bricks:** Reusable objects attached to a class. ([objectbrick_SaleInformation_export.json](objectbrick_SaleInformation_export.json))
*   **Product Data Example:** Product data based on the imported structure. ([data_ExampleProductType_export.json](data_ExampleProductType_export.json))

**Personal Notes (For Development):**

*   **Start Xdebug:**
    ```bash
    php -d xdebug.mode=debug -d xdebug.client_host=172.23.0.1 -d xdebug.client_port=9003 -d xdebug.idekey="PHPSTORM" -d xdebug.start_with_request=yes bin/console pimcore:definition:import:class class.json
    ```
*   **Docker Compose Down (with Volumes):**
    ```bash
    docker-compose down --volumes
    ```
*   **Pimcore Install (Skipping Data):**
    ```bash
    docker compose exec php vendor/bin/pimcore-install --mysql-host-socket=db --mysql-username=pimcore --mysql-password=pimcore --mysql-database=pimcore --skip-database-data --skip-database-data-dump
    ```
*   **Example Preview URL:**
    ```
    http://localhost/en/shop/Products/coffee-filters/EN-MelittaR-Original--100--braun--40-St~p1193?pimcore_object_preview=1193&dc=1739303623
    ```
*   **Example Product URL:**
    ```
    http://localhost/en/shop/Products/EN-MelittaR-Original--100--braun--40-St~p1193
    ```

**Pimcore Project Stack Notes:**

*   [Pimcore Deployment Tools](https://docs.pimcore.com/platform/Pimcore/Deployment/Deployment_Tools/#potentially-useful-commands)
*   [Pimcore Workflow Automation](https://docs.pimcore.com/platform/Workflow_Automation/Work_with_WAI)

 # boot env pimcore cloud
 - docker compose exec -u 0 -it php bash
 - php pimcore.phar auth:api-token-login

 # auto transform input schema to output schema
 - bin/console app:auto-map-json -i data/product_model_1.json -o cache/generated/class_StaticImportedProductType1_export.json -p data/prompt/model_prompt.md
 - bin/console pimcore:definition:import:class cache/generated/class_StaticImportedProductType1_export.json

# import data
 - bin/console app:auto-map-data-json -i data/product_data_1.json -o cache/generated/data_StaticImportedProductType1_export.json -s cache/generated/class_StaticImportedProductType1_export.json -p data/prompt/data_prompt.md
 - bin/console app:import-data-command -m cache/generated/class_StaticImportedProductType1_export.json -d cache/generated/data_StaticImportedProductType1_export.json

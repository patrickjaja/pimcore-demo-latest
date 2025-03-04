
SET NAMES utf8mb4;



DROP TABLE IF EXISTS `application_logs`;
CREATE TABLE `application_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `message` text DEFAULT NULL,
  `priority` enum('emergency','alert','critical','error','warning','notice','info','debug') DEFAULT NULL,
  `fileobject` varchar(1024) DEFAULT NULL,
  `info` varchar(1024) DEFAULT NULL,
  `component` varchar(190) DEFAULT NULL,
  `source` varchar(190) DEFAULT NULL,
  `relatedobject` int(11) unsigned DEFAULT NULL,
  `relatedobjecttype` enum('object','document','asset') DEFAULT NULL,
  `maintenanceChecked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `component` (`component`),
  KEY `timestamp` (`timestamp`),
  KEY `relatedobject` (`relatedobject`),
  KEY `priority` (`priority`),
  KEY `maintenanceChecked` (`maintenanceChecked`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `bundle_outputdataconfigtoolkit_outputdefinition`;
CREATE TABLE `bundle_outputdataconfigtoolkit_outputdefinition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` int(11) NOT NULL,
  `classId` varchar(50) NOT NULL,
  `channel` varchar(255) NOT NULL,
  `configuration` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unique` (`objectId`,`classId`,`channel`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;



DROP TABLE IF EXISTS `bundle_web2print_favorite_outputdefinitions`;
CREATE TABLE `bundle_web2print_favorite_outputdefinitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classId` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `configuration` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;



DROP TABLE IF EXISTS `cache_items`;
CREATE TABLE `cache_items` (
  `item_id` varbinary(255) NOT NULL,
  `item_data` mediumblob NOT NULL,
  `item_lifetime` int(10) unsigned DEFAULT NULL,
  `item_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;



DROP TABLE IF EXISTS `documents_newsletter`;
CREATE TABLE `documents_newsletter` (
  `id` int(11) unsigned NOT NULL DEFAULT 0,
  `controller` varchar(500) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `trackingParameterSource` varchar(255) DEFAULT NULL,
  `trackingParameterMedium` varchar(255) DEFAULT NULL,
  `trackingParameterName` varchar(255) DEFAULT NULL,
  `enableTrackingParameters` tinyint(1) unsigned DEFAULT NULL,
  `sendingMode` varchar(20) DEFAULT NULL,
  `plaintext` longtext DEFAULT NULL,
  `missingRequiredEditable` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_documents_newsletter_documents` FOREIGN KEY (`id`) REFERENCES `documents` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `documents_printpage`;
CREATE TABLE `documents_printpage` (
  `id` int(11) unsigned NOT NULL DEFAULT 0,
  `controller` varchar(500) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `lastgenerated` int(11) DEFAULT NULL,
  `lastgeneratemessage` text DEFAULT NULL,
  `contentmaindocumentid` int(11) DEFAULT NULL,
  `missingrequirededitable` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_documents_printpage_documents` FOREIGN KEY (`id`) REFERENCES `documents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `ecommerceframework_cart`;
CREATE TABLE `ecommerceframework_cart` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `userid` int(20) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `creationDateTimestamp` int(10) NOT NULL,
  `modificationDateTimestamp` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ecommerceframework_cart_userid_index` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;



DROP TABLE IF EXISTS `ecommerceframework_cartcheckoutdata`;
CREATE TABLE `ecommerceframework_cartcheckoutdata` (
  `cartId` int(20) NOT NULL,
  `key` varchar(150) NOT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`cartId`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;



DROP TABLE IF EXISTS `ecommerceframework_cartitem`;
CREATE TABLE `ecommerceframework_cartitem` (
  `productId` int(20) NOT NULL,
  `cartId` int(20) NOT NULL,
  `count` int(20) NOT NULL,
  `itemKey` varchar(100) NOT NULL,
  `parentItemKey` varchar(100) NOT NULL DEFAULT '0',
  `comment` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `addedDateTimestamp` bigint(20) NOT NULL,
  `sortIndex` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`itemKey`,`cartId`,`parentItemKey`),
  KEY `cartId_parentItemKey` (`cartId`,`parentItemKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;



DROP TABLE IF EXISTS `ecommerceframework_pricing_rule`;
CREATE TABLE `ecommerceframework_pricing_rule` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `label` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `behavior` enum('additiv','stopExecute') DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `prio` tinyint(3) unsigned NOT NULL,
  `condition` text NOT NULL COMMENT 'configuration der condition',
  `actions` text NOT NULL COMMENT 'configuration der action',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `ecommerceframework_vouchertoolkit_reservations`;
CREATE TABLE `ecommerceframework_vouchertoolkit_reservations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `token` varchar(250) NOT NULL,
  `cart_id` varchar(250) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



DROP TABLE IF EXISTS `ecommerceframework_vouchertoolkit_statistics`;
CREATE TABLE `ecommerceframework_vouchertoolkit_statistics` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `voucherSeriesId` bigint(20) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



DROP TABLE IF EXISTS `ecommerceframework_vouchertoolkit_tokens`;
CREATE TABLE `ecommerceframework_vouchertoolkit_tokens` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `voucherSeriesId` bigint(20) DEFAULT NULL,
  `token` varchar(250) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `usages` bigint(20) DEFAULT 0,
  `timestamp` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



DROP TABLE IF EXISTS `generic_execution_engine_error_log`;
CREATE TABLE `generic_execution_engine_error_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jobRunId` int(10) unsigned NOT NULL,
  `stepNumber` int(10) unsigned NOT NULL,
  `elementId` int(10) unsigned DEFAULT NULL,
  `errorMessage` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_generic_job_execution_log_jobs` (`jobRunId`),
  CONSTRAINT `fk_generic_job_execution_log_jobs` FOREIGN KEY (`jobRunId`) REFERENCES `generic_execution_engine_job_run` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `generic_execution_engine_job_run`;
CREATE TABLE `generic_execution_engine_job_run` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ownerId` int(10) unsigned DEFAULT NULL,
  `state` varchar(100) NOT NULL,
  `currentStep` int(10) unsigned DEFAULT NULL,
  `currentMessage` text DEFAULT NULL,
  `log` text DEFAULT NULL,
  `serializedJob` longtext DEFAULT NULL,
  `context` longtext DEFAULT NULL,
  `creationDate` int(11) DEFAULT NULL,
  `modificationDate` int(11) DEFAULT NULL,
  `executionContext` varchar(255) DEFAULT 'default',
  `totalElements` int(10) unsigned NOT NULL,
  `processedElementsForStep` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_generic_job_execution_owner_users` (`ownerId`),
  CONSTRAINT `fk_generic_job_execution_owner_users` FOREIGN KEY (`ownerId`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `glossary`;
CREATE TABLE `glossary` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `language` varchar(10) DEFAULT NULL,
  `casesensitive` tinyint(1) DEFAULT NULL,
  `exactmatch` tinyint(1) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `abbr` varchar(255) DEFAULT NULL,
  `site` int(11) unsigned DEFAULT NULL,
  `creationDate` int(11) unsigned DEFAULT 0,
  `modificationDate` int(11) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `language` (`language`),
  KEY `site` (`site`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `http_error_log`;
CREATE TABLE `http_error_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `code` int(3) DEFAULT NULL,
  `parametersGet` longtext DEFAULT NULL,
  `parametersPost` longtext DEFAULT NULL,
  `cookies` longtext DEFAULT NULL,
  `serverVars` longtext DEFAULT NULL,
  `date` int(11) unsigned DEFAULT NULL,
  `count` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uri` (`uri`),
  KEY `code` (`code`),
  KEY `date` (`date`),
  KEY `count` (`count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;



DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12382 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE `migration_versions` (
  `version` varchar(1024) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;



DROP TABLE IF EXISTS `object_brick_query_PaymentProviderPayPalSmartButton_EF_OSO`;
CREATE TABLE `object_brick_query_PaymentProviderPayPalSmartButton_EF_OSO` (
  `id` int(11) unsigned NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `configurationKey` varchar(190) DEFAULT NULL,
  `auth_orderID` varchar(255) DEFAULT NULL,
  `auth_payerID` varchar(255) DEFAULT NULL,
  `auth_email_address` varchar(255) DEFAULT NULL,
  `auth_given_name` varchar(255) DEFAULT NULL,
  `auth_surname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`fieldname`),
  KEY `id` (`id`),
  KEY `fieldname` (`fieldname`),
  CONSTRAINT `fk_object_brick_query_PaymentProviderPayPalSmartButton__fae6504e` FOREIGN KEY (`id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_brick_store_PaymentProviderPayPalSmartButton_EF_OSO`;
CREATE TABLE `object_brick_store_PaymentProviderPayPalSmartButton_EF_OSO` (
  `id` int(11) unsigned NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `configurationKey` varchar(190) DEFAULT NULL,
  `auth_orderID` varchar(255) DEFAULT NULL,
  `auth_payerID` varchar(255) DEFAULT NULL,
  `auth_email_address` varchar(255) DEFAULT NULL,
  `auth_given_name` varchar(255) DEFAULT NULL,
  `auth_surname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`fieldname`),
  KEY `id` (`id`),
  KEY `fieldname` (`fieldname`),
  CONSTRAINT `fk_object_brick_store_PaymentProviderPayPalSmartButton__d52c4917` FOREIGN KEY (`id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_FilterCategoryMultiselect_EF_FD`;
CREATE TABLE `object_collection_FilterCategoryMultiselect_EF_FD` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `useAndCondition` tinyint(1) DEFAULT NULL,
  `includeParentCategories` tinyint(1) DEFAULT NULL,
  `scriptPath` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `IDX_28C299ABDB01246B` (`id`),
  CONSTRAINT `fk_object_collection_FilterCategoryMultiselect_EF_FD__id` FOREIGN KEY (`id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_FilterCategoryMultiselect_localized_EF_FD`;
CREATE TABLE `object_collection_FilterCategoryMultiselect_localized_EF_FD` (
  `ooo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ooo_id`,`language`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `language` (`language`),
  KEY `IDX_8C2E3279A94707C7` (`ooo_id`),
  CONSTRAINT `fk_object_collection_FilterCategoryMultiselect_localize_4abb1d7a` FOREIGN KEY (`ooo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_FilterCategory_EF_FD`;
CREATE TABLE `object_collection_FilterCategory_EF_FD` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `includeParentCategories` tinyint(1) DEFAULT NULL,
  `scriptPath` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `IDX_9F24266CDB01246B` (`id`),
  CONSTRAINT `fk_object_collection_FilterCategory_EF_FD__id` FOREIGN KEY (`id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_FilterCategory_localized_EF_FD`;
CREATE TABLE `object_collection_FilterCategory_localized_EF_FD` (
  `ooo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ooo_id`,`language`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `language` (`language`),
  KEY `IDX_21FD7525A94707C7` (`ooo_id`),
  CONSTRAINT `fk_object_collection_FilterCategory_localized_EF_FD__ooo_id` FOREIGN KEY (`ooo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_FilterInputfield_EF_FD`;
CREATE TABLE `object_collection_FilterInputfield_EF_FD` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `preSelect` varchar(255) DEFAULT NULL,
  `scriptPath` varchar(255) DEFAULT NULL,
  `field__tenant` varchar(100) DEFAULT NULL,
  `field__field` varchar(200) DEFAULT NULL,
  `field__preSelect` text DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `IDX_699D2D53DB01246B` (`id`),
  CONSTRAINT `fk_object_collection_FilterInputfield_EF_FD__id` FOREIGN KEY (`id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_FilterInputfield_localized_EF_FD`;
CREATE TABLE `object_collection_FilterInputfield_localized_EF_FD` (
  `ooo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ooo_id`,`language`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `language` (`language`),
  KEY `IDX_F447F022A94707C7` (`ooo_id`),
  CONSTRAINT `fk_object_collection_FilterInputfield_localized_EF_FD__ooo_id` FOREIGN KEY (`ooo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_FilterMultiRelation_EF_FD`;
CREATE TABLE `object_collection_FilterMultiRelation_EF_FD` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `field__tenant` varchar(100) DEFAULT NULL,
  `field__field` varchar(200) DEFAULT NULL,
  `field__preSelect` text DEFAULT NULL,
  `useAndCondition` tinyint(1) DEFAULT NULL,
  `scriptPath` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `IDX_5C39D125DB01246B` (`id`),
  CONSTRAINT `fk_object_collection_FilterMultiRelation_EF_FD__id` FOREIGN KEY (`id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_FilterMultiRelation_localized_EF_FD`;
CREATE TABLE `object_collection_FilterMultiRelation_localized_EF_FD` (
  `ooo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ooo_id`,`language`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `language` (`language`),
  KEY `IDX_AB8E56F0A94707C7` (`ooo_id`),
  CONSTRAINT `fk_object_collection_FilterMultiRelation_localized_EF_FD__ooo_id` FOREIGN KEY (`ooo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_FilterMultiSelectFromMultiSelect_EF_FD`;
CREATE TABLE `object_collection_FilterMultiSelectFromMultiSelect_EF_FD` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `label` varchar(255) DEFAULT NULL,
  `field__tenant` varchar(100) DEFAULT NULL,
  `field__field` varchar(200) DEFAULT NULL,
  `field__preSelect` text DEFAULT NULL,
  `scriptPath` varchar(255) DEFAULT NULL,
  `UseAndCondition` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `IDX_D53E1B56DB01246B` (`id`),
  CONSTRAINT `fk_object_collection_FilterMultiSelectFromMultiSelect_E_1eaf0561` FOREIGN KEY (`id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_FilterMultiSelect_EF_FD`;
CREATE TABLE `object_collection_FilterMultiSelect_EF_FD` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `field__tenant` varchar(100) DEFAULT NULL,
  `field__field` varchar(200) DEFAULT NULL,
  `field__preSelect` text DEFAULT NULL,
  `scriptPath` varchar(255) DEFAULT NULL,
  `UseAndCondition` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `IDX_99B478ADB01246B` (`id`),
  CONSTRAINT `fk_object_collection_FilterMultiSelect_EF_FD__id` FOREIGN KEY (`id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_FilterMultiSelect_localized_EF_FD`;
CREATE TABLE `object_collection_FilterMultiSelect_localized_EF_FD` (
  `ooo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ooo_id`,`language`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `language` (`language`),
  KEY `IDX_D3D71AF9A94707C7` (`ooo_id`),
  CONSTRAINT `fk_object_collection_FilterMultiSelect_localized_EF_FD__ooo_id` FOREIGN KEY (`ooo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_FilterNumberRangeSelection_EF_FD`;
CREATE TABLE `object_collection_FilterNumberRangeSelection_EF_FD` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `field__tenant` varchar(100) DEFAULT NULL,
  `field__field` varchar(200) DEFAULT NULL,
  `field__preSelect` text DEFAULT NULL,
  `ranges__range1#from` double DEFAULT NULL,
  `ranges__range1#to` double DEFAULT NULL,
  `ranges__range2#from` double DEFAULT NULL,
  `ranges__range2#to` double DEFAULT NULL,
  `ranges__range3#from` double DEFAULT NULL,
  `ranges__range3#to` double DEFAULT NULL,
  `ranges__range4#from` double DEFAULT NULL,
  `ranges__range4#to` double DEFAULT NULL,
  `preSelectFrom` double DEFAULT NULL,
  `preSelectTo` double DEFAULT NULL,
  `scriptPath` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `IDX_45C7200CDB01246B` (`id`),
  CONSTRAINT `fk_object_collection_FilterNumberRangeSelection_EF_FD__id` FOREIGN KEY (`id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_FilterNumberRangeSelection_localized_EF_FD`;
CREATE TABLE `object_collection_FilterNumberRangeSelection_localized_EF_FD` (
  `ooo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ooo_id`,`language`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `language` (`language`),
  KEY `IDX_81EC7656A94707C7` (`ooo_id`),
  CONSTRAINT `fk_object_collection_FilterNumberRangeSelection_localiz_15c765c5` FOREIGN KEY (`ooo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_FilterNumberRange_EF_FD`;
CREATE TABLE `object_collection_FilterNumberRange_EF_FD` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `field__tenant` varchar(100) DEFAULT NULL,
  `field__field` varchar(200) DEFAULT NULL,
  `field__preSelect` text DEFAULT NULL,
  `rangeFrom` double DEFAULT NULL,
  `rangeTo` double DEFAULT NULL,
  `preSelectFrom` double DEFAULT NULL,
  `preSelectTo` double DEFAULT NULL,
  `scriptPath` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `IDX_57BD4C22DB01246B` (`id`),
  CONSTRAINT `fk_object_collection_FilterNumberRange_EF_FD__id` FOREIGN KEY (`id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_FilterNumberRange_localized_EF_FD`;
CREATE TABLE `object_collection_FilterNumberRange_localized_EF_FD` (
  `ooo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ooo_id`,`language`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `language` (`language`),
  KEY `IDX_A7FE373AA94707C7` (`ooo_id`),
  CONSTRAINT `fk_object_collection_FilterNumberRange_localized_EF_FD__ooo_id` FOREIGN KEY (`ooo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_FilterRelation_EF_FD`;
CREATE TABLE `object_collection_FilterRelation_EF_FD` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `field__tenant` varchar(100) DEFAULT NULL,
  `field__field` varchar(200) DEFAULT NULL,
  `field__preSelect` text DEFAULT NULL,
  `scriptPath` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `IDX_E4A9BCBBDB01246B` (`id`),
  CONSTRAINT `fk_object_collection_FilterRelation_EF_FD__id` FOREIGN KEY (`id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_FilterRelation_localized_EF_FD`;
CREATE TABLE `object_collection_FilterRelation_localized_EF_FD` (
  `ooo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ooo_id`,`language`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `language` (`language`),
  KEY `IDX_E5DA3D6FA94707C7` (`ooo_id`),
  CONSTRAINT `fk_object_collection_FilterRelation_localized_EF_FD__ooo_id` FOREIGN KEY (`ooo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_FilterSelectFromMultiSelect_EF_FD`;
CREATE TABLE `object_collection_FilterSelectFromMultiSelect_EF_FD` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `field__tenant` varchar(100) DEFAULT NULL,
  `field__field` varchar(200) DEFAULT NULL,
  `field__preSelect` text DEFAULT NULL,
  `scriptPath` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `IDX_C97EC354DB01246B` (`id`),
  CONSTRAINT `fk_object_collection_FilterSelectFromMultiSelect_EF_FD__id` FOREIGN KEY (`id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_FilterSelectFromMultiSelect_localized_EF_FD`;
CREATE TABLE `object_collection_FilterSelectFromMultiSelect_localized_EF_FD` (
  `ooo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ooo_id`,`language`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `language` (`language`),
  KEY `IDX_AE9B40CEA94707C7` (`ooo_id`),
  CONSTRAINT `fk_object_collection_FilterSelectFromMultiSelect_locali_66ddb75e` FOREIGN KEY (`ooo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_FilterSelect_EF_FD`;
CREATE TABLE `object_collection_FilterSelect_EF_FD` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `field__tenant` varchar(100) DEFAULT NULL,
  `field__field` varchar(200) DEFAULT NULL,
  `field__preSelect` text DEFAULT NULL,
  `scriptPath` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `IDX_C3E5FD75DB01246B` (`id`),
  CONSTRAINT `fk_object_collection_FilterSelect_EF_FD__id` FOREIGN KEY (`id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_FilterSelect_localized_EF_FD`;
CREATE TABLE `object_collection_FilterSelect_localized_EF_FD` (
  `ooo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ooo_id`,`language`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `language` (`language`),
  KEY `IDX_3E6DC489A94707C7` (`ooo_id`),
  CONSTRAINT `fk_object_collection_FilterSelect_localized_EF_FD__ooo_id` FOREIGN KEY (`ooo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_NewsCars_localized_NE`;
CREATE TABLE `object_collection_NewsCars_localized_NE` (
  `ooo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`ooo_id`,`language`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `language` (`language`),
  KEY `IDX_34B3B198A94707C7` (`ooo_id`),
  CONSTRAINT `fk_object_collection_NewsCars_localized_NE__ooo_id` FOREIGN KEY (`ooo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_NewsLinks_localized_NE`;
CREATE TABLE `object_collection_NewsLinks_localized_NE` (
  `ooo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`ooo_id`,`language`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `language` (`language`),
  KEY `IDX_2DC5C691A94707C7` (`ooo_id`),
  CONSTRAINT `fk_object_collection_NewsLinks_localized_NE__ooo_id` FOREIGN KEY (`ooo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_NewsText_localized_NE`;
CREATE TABLE `object_collection_NewsText_localized_NE` (
  `ooo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `text` longtext DEFAULT NULL,
  PRIMARY KEY (`ooo_id`,`language`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `language` (`language`),
  KEY `IDX_D583CFFFA94707C7` (`ooo_id`),
  CONSTRAINT `fk_object_collection_NewsText_localized_NE__ooo_id` FOREIGN KEY (`ooo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_OrderByFields_EF_FD`;
CREATE TABLE `object_collection_OrderByFields_EF_FD` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `field` varchar(190) DEFAULT NULL,
  `direction` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`id`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `IDX_8139105FDB01246B` (`id`),
  CONSTRAINT `fk_object_collection_OrderByFields_EF_FD__id` FOREIGN KEY (`id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_OrderPriceModifications_EF_OSO`;
CREATE TABLE `object_collection_OrderPriceModifications_EF_OSO` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `netAmount` decimal(19,4) DEFAULT NULL,
  `amount` decimal(19,4) DEFAULT NULL,
  `pricingRuleId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `IDX_598F73C2DB01246B` (`id`),
  CONSTRAINT `fk_object_collection_OrderPriceModifications_EF_OSO__id` FOREIGN KEY (`id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_PaymentInfo_EF_OSO`;
CREATE TABLE `object_collection_PaymentInfo_EF_OSO` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `paymentStart` bigint(20) DEFAULT NULL,
  `paymentFinish` bigint(20) DEFAULT NULL,
  `paymentReference` varchar(255) DEFAULT NULL,
  `paymentState` varchar(190) DEFAULT NULL,
  `internalPaymentId` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `providerData` longtext DEFAULT NULL,
  `provider_paypal_amount` varchar(255) DEFAULT NULL,
  `provider_paypal_PaymentType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `IDX_B606429DDB01246B` (`id`),
  CONSTRAINT `fk_object_collection_PaymentInfo_EF_OSO__id` FOREIGN KEY (`id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_PricingRule_EF_OSOI`;
CREATE TABLE `object_collection_PricingRule_EF_OSOI` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `ruleId` double DEFAULT NULL,
  PRIMARY KEY (`id`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `IDX_9E956274DB01246B` (`id`),
  CONSTRAINT `fk_object_collection_PricingRule_EF_OSOI__id` FOREIGN KEY (`id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_PricingRule_localized_EF_OSOI`;
CREATE TABLE `object_collection_PricingRule_localized_EF_OSOI` (
  `ooo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ooo_id`,`language`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `language` (`language`),
  KEY `IDX_C001B98BA94707C7` (`ooo_id`),
  CONSTRAINT `fk_object_collection_PricingRule_localized_EF_OSOI__ooo_id` FOREIGN KEY (`ooo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_SimilarityField_EF_FD`;
CREATE TABLE `object_collection_SimilarityField_EF_FD` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `field` varchar(190) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  PRIMARY KEY (`id`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `IDX_3FE457BADB01246B` (`id`),
  CONSTRAINT `fk_object_collection_SimilarityField_EF_FD__id` FOREIGN KEY (`id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_TaxEntry_EF_OSTC`;
CREATE TABLE `object_collection_TaxEntry_EF_OSTC` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `percent` double DEFAULT NULL,
  PRIMARY KEY (`id`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `IDX_CE94A1DDB01246B` (`id`),
  CONSTRAINT `fk_object_collection_TaxEntry_EF_OSTC__id` FOREIGN KEY (`id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_TaxEntry_localized_EF_OSTC`;
CREATE TABLE `object_collection_TaxEntry_localized_EF_OSTC` (
  `ooo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`ooo_id`,`language`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `language` (`language`),
  KEY `IDX_81B466B2A94707C7` (`ooo_id`),
  CONSTRAINT `fk_object_collection_TaxEntry_localized_EF_OSTC__ooo_id` FOREIGN KEY (`ooo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_VoucherTokenTypePattern_EF_OSVS`;
CREATE TABLE `object_collection_VoucherTokenTypePattern_EF_OSVS` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `count` bigint(20) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `length` bigint(20) DEFAULT NULL,
  `characterType` varchar(190) DEFAULT NULL,
  `separator` varchar(255) DEFAULT NULL,
  `separatorCount` decimal(64,0) DEFAULT NULL,
  `allowOncePerCart` tinyint(1) DEFAULT NULL,
  `onlyTokenPerCart` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `IDX_F37B567DDB01246B` (`id`),
  CONSTRAINT `fk_object_collection_VoucherTokenTypePattern_EF_OSVS__id` FOREIGN KEY (`id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_collection_VoucherTokenTypeSingle_EF_OSVS`;
CREATE TABLE `object_collection_VoucherTokenTypeSingle_EF_OSVS` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `index` int(11) NOT NULL DEFAULT 0,
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `token` varchar(255) DEFAULT NULL,
  `usages` decimal(64,0) DEFAULT NULL,
  `onlyTokenPerCart` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`),
  KEY `IDX_27350A8BDB01246B` (`id`),
  CONSTRAINT `fk_object_collection_VoucherTokenTypeSingle_EF_OSVS__id` FOREIGN KEY (`id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_localized_data_EV`;
CREATE TABLE `object_localized_data_EV` (
  `ooo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `language` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  PRIMARY KEY (`ooo_id`,`language`),
  KEY `language` (`language`),
  KEY `IDX_F5353A0AA94707C7` (`ooo_id`),
  CONSTRAINT `fk_object_localized_data_EV__ooo_id` FOREIGN KEY (`ooo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_localized_data_NE`;
CREATE TABLE `object_localized_data_NE` (
  `ooo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `language` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(190) DEFAULT NULL,
  `shortText` longtext DEFAULT NULL,
  PRIMARY KEY (`ooo_id`,`language`),
  KEY `language` (`language`),
  KEY `IDX_927FA21FA94707C7` (`ooo_id`),
  CONSTRAINT `fk_object_localized_data_NE__ooo_id` FOREIGN KEY (`ooo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_localized_query_EV_de`;
CREATE TABLE `object_localized_query_EV_de` (
  `ooo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `language` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  PRIMARY KEY (`ooo_id`,`language`),
  KEY `language` (`language`),
  KEY `IDX_2C277074A94707C7` (`ooo_id`),
  CONSTRAINT `fk_object_localized_query_EV_de__ooo_id` FOREIGN KEY (`ooo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_localized_query_EV_en`;
CREATE TABLE `object_localized_query_EV_en` (
  `ooo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `language` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  PRIMARY KEY (`ooo_id`,`language`),
  KEY `language` (`language`),
  KEY `IDX_A2EE98BDA94707C7` (`ooo_id`),
  CONSTRAINT `fk_object_localized_query_EV_en__ooo_id` FOREIGN KEY (`ooo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_localized_query_EV_fr`;
CREATE TABLE `object_localized_query_EV_fr` (
  `ooo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `language` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  PRIMARY KEY (`ooo_id`,`language`),
  KEY `language` (`language`),
  KEY `IDX_9DC29731A94707C7` (`ooo_id`),
  CONSTRAINT `fk_object_localized_query_EV_fr__ooo_id` FOREIGN KEY (`ooo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_localized_query_NE_de`;
CREATE TABLE `object_localized_query_NE_de` (
  `ooo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `language` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(190) DEFAULT NULL,
  `shortText` longtext DEFAULT NULL,
  PRIMARY KEY (`ooo_id`,`language`),
  KEY `language` (`language`),
  KEY `IDX_195BB914A94707C7` (`ooo_id`),
  CONSTRAINT `fk_object_localized_query_NE_de__ooo_id` FOREIGN KEY (`ooo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_localized_query_NE_en`;
CREATE TABLE `object_localized_query_NE_en` (
  `ooo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `language` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(190) DEFAULT NULL,
  `shortText` longtext DEFAULT NULL,
  PRIMARY KEY (`ooo_id`,`language`),
  KEY `language` (`language`),
  KEY `IDX_979251DDA94707C7` (`ooo_id`),
  CONSTRAINT `fk_object_localized_query_NE_en__ooo_id` FOREIGN KEY (`ooo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_localized_query_NE_fr`;
CREATE TABLE `object_localized_query_NE_fr` (
  `ooo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `language` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(190) DEFAULT NULL,
  `shortText` longtext DEFAULT NULL,
  PRIMARY KEY (`ooo_id`,`language`),
  KEY `language` (`language`),
  KEY `IDX_A8BE5E51A94707C7` (`ooo_id`),
  CONSTRAINT `fk_object_localized_query_NE_fr__ooo_id` FOREIGN KEY (`ooo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_metadata_CU`;
CREATE TABLE `object_metadata_CU` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `dest_id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(71) NOT NULL,
  `column` varchar(190) NOT NULL,
  `data` text DEFAULT NULL,
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`,`dest_id`,`type`,`fieldname`,`column`,`ownertype`,`ownername`,`position`,`index`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `column` (`column`),
  KEY `ownertype` (`ownertype`),
  KEY `ownername` (`ownername`),
  KEY `position` (`position`),
  KEY `index` (`index`),
  KEY `IDX_208F4545DB01246B` (`id`),
  CONSTRAINT `fk_object_metadata_CU__id` FOREIGN KEY (`id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_query_1`;
CREATE TABLE `object_query_1` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `oo_classId` varchar(50) DEFAULT '1',
  `oo_className` varchar(255) DEFAULT 'CustomerSegmentGroup',
  `name` varchar(255) DEFAULT NULL,
  `reference` varchar(190) DEFAULT NULL,
  `calculated` tinyint(1) DEFAULT NULL,
  `showAsFilter` tinyint(1) DEFAULT NULL,
  `filterSortOrder` bigint(20) DEFAULT NULL,
  `exportNewsletterProvider` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  KEY `p_index_showAsFilter` (`showAsFilter`),
  CONSTRAINT `fk_object_query_1__id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_query_2`;
CREATE TABLE `object_query_2` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `oo_classId` varchar(50) DEFAULT '2',
  `oo_className` varchar(255) DEFAULT 'CustomerSegment',
  `name` varchar(255) DEFAULT NULL,
  `group__id` int(11) DEFAULT NULL,
  `group__type` enum('document','asset','object') DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `calculated` tinyint(1) DEFAULT NULL,
  `useAsTargetGroup` tinyint(1) DEFAULT NULL,
  `targetGroup` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  KEY `p_index_reference` (`reference`),
  CONSTRAINT `fk_object_query_2__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_query_4`;
CREATE TABLE `object_query_4` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `oo_classId` varchar(50) DEFAULT '4',
  `oo_className` varchar(255) DEFAULT 'TermSegmentBuilderDefinition',
  `name` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_query_4__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_query_5`;
CREATE TABLE `object_query_5` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `oo_classId` varchar(50) DEFAULT '5',
  `oo_className` varchar(255) DEFAULT 'LinkActivityDefinition',
  `code` varchar(190) DEFAULT NULL,
  `attributeType` varchar(190) DEFAULT NULL,
  `label` varchar(190) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `active` varchar(190) DEFAULT NULL,
  `utm_source` varchar(190) DEFAULT NULL,
  `utm_medium` varchar(190) DEFAULT NULL,
  `utm_campaign` varchar(190) DEFAULT NULL,
  `utm_term` varchar(190) DEFAULT NULL,
  `utm_content` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_query_5__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_query_CU`;
CREATE TABLE `object_query_CU` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `oo_classId` varchar(50) DEFAULT 'CU',
  `oo_className` varchar(255) DEFAULT 'Customer',
  `active` tinyint(1) DEFAULT NULL,
  `gender` varchar(190) DEFAULT NULL,
  `firstname` varchar(190) DEFAULT NULL,
  `lastname` varchar(190) DEFAULT NULL,
  `email` varchar(190) DEFAULT NULL,
  `street` varchar(190) DEFAULT NULL,
  `zip` varchar(190) DEFAULT NULL,
  `city` varchar(190) DEFAULT NULL,
  `countryCode` varchar(190) DEFAULT NULL,
  `phone` varchar(190) DEFAULT NULL,
  `idEncoded` varchar(190) DEFAULT NULL,
  `manualSegments` text DEFAULT NULL,
  `calculatedSegments` text DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `company` varchar(190) DEFAULT NULL,
  `passwordRecoveryToken` varchar(190) DEFAULT NULL,
  `passwordRecoveryTokenDate` bigint(20) DEFAULT NULL,
  `customerLanguage` varchar(190) DEFAULT NULL,
  `newsletter` tinyint(1) DEFAULT NULL,
  `newsletterActive` tinyint(1) DEFAULT NULL,
  `newsletterConfirmed` tinyint(1) DEFAULT NULL,
  `profiling` tinyint(1) DEFAULT NULL,
  `newsletterConfirmToken` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  KEY `p_index_idEncoded` (`idEncoded`),
  CONSTRAINT `fk_object_query_CU__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_query_EF_FD`;
CREATE TABLE `object_query_EF_FD` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `oo_classId` varchar(50) DEFAULT 'EF_FD',
  `oo_className` varchar(255) DEFAULT 'FilterDefinition',
  `pageLimit` double DEFAULT NULL,
  `defaultOrderByInheritance` varchar(190) DEFAULT NULL,
  `orderByAsc` longtext DEFAULT NULL,
  `orderByDesc` longtext DEFAULT NULL,
  `ajaxReload` tinyint(1) DEFAULT NULL,
  `infiniteScroll` tinyint(1) DEFAULT NULL,
  `limitOnFirstLoad` double DEFAULT NULL,
  `conditionsInheritance` varchar(190) DEFAULT NULL,
  `filtersInheritance` varchar(190) DEFAULT NULL,
  `crossSellingCategory__id` int(11) DEFAULT NULL,
  `crossSellingCategory__type` enum('document','asset','object') DEFAULT NULL,
  `similarityFieldsInheritance` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_query_EF_FD__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_query_EF_OSO`;
CREATE TABLE `object_query_EF_OSO` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `oo_classId` varchar(50) DEFAULT 'EF_OSO',
  `oo_className` varchar(255) DEFAULT 'OnlineShopOrder',
  `ordernumber` varchar(255) DEFAULT NULL,
  `orderState` varchar(190) DEFAULT NULL,
  `orderdate` bigint(20) DEFAULT NULL,
  `items` text DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `customerOrderData` varchar(255) DEFAULT NULL,
  `voucherTokens` text DEFAULT NULL,
  `giftItems` text DEFAULT NULL,
  `subTotalNetPrice` decimal(19,4) DEFAULT NULL,
  `subTotalPrice` decimal(19,4) DEFAULT NULL,
  `totalNetPrice` decimal(19,4) DEFAULT NULL,
  `totalPrice` decimal(19,4) DEFAULT NULL,
  `taxInfo` longtext DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `cartId` varchar(190) DEFAULT NULL,
  `customer__id` int(11) DEFAULT NULL,
  `customer__type` enum('document','asset','object') DEFAULT NULL,
  `customerFirstname` varchar(255) DEFAULT NULL,
  `customerLastname` varchar(255) DEFAULT NULL,
  `customerCompany` varchar(255) DEFAULT NULL,
  `customerStreet` varchar(255) DEFAULT NULL,
  `customerZip` varchar(255) DEFAULT NULL,
  `customerCity` varchar(255) DEFAULT NULL,
  `customerCountry` varchar(190) DEFAULT NULL,
  `customerEmail` varchar(255) DEFAULT NULL,
  `deliveryFirstname` varchar(255) DEFAULT NULL,
  `deliveryLastname` varchar(255) DEFAULT NULL,
  `deliveryCompany` varchar(255) DEFAULT NULL,
  `deliveryStreet` varchar(255) DEFAULT NULL,
  `deliveryZip` varchar(255) DEFAULT NULL,
  `deliveryCity` varchar(255) DEFAULT NULL,
  `deliveryCountry` varchar(190) DEFAULT NULL,
  `paymentReference` varchar(255) DEFAULT NULL,
  `successorOrder__id` int(11) DEFAULT NULL,
  `successorOrder__type` enum('document','asset','object') DEFAULT NULL,
  `cartHash` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  KEY `p_index_cartId` (`cartId`),
  CONSTRAINT `fk_object_query_EF_OSO__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_query_EF_OSOI`;
CREATE TABLE `object_query_EF_OSOI` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `oo_classId` varchar(50) DEFAULT 'EF_OSOI',
  `oo_className` varchar(255) DEFAULT 'OnlineShopOrderItem',
  `orderState` varchar(190) DEFAULT NULL,
  `product__id` int(11) DEFAULT NULL,
  `product__type` enum('document','asset','object') DEFAULT NULL,
  `productNumber` varchar(255) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `totalNetPrice` decimal(19,4) DEFAULT NULL,
  `totalPrice` decimal(19,4) DEFAULT NULL,
  `taxInfo` longtext DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `subItems` text DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_query_EF_OSOI__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_query_EF_OSTC`;
CREATE TABLE `object_query_EF_OSTC` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `oo_classId` varchar(50) DEFAULT 'EF_OSTC',
  `oo_className` varchar(255) DEFAULT 'OnlineShopTaxClass',
  `taxEntryCombinationType` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_query_EF_OSTC__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_query_EF_OSVS`;
CREATE TABLE `object_query_EF_OSVS` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `oo_classId` varchar(50) DEFAULT 'EF_OSVS',
  `oo_className` varchar(255) DEFAULT 'OnlineShopVoucherSeries',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_query_EF_OSVS__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_query_EF_OSVT`;
CREATE TABLE `object_query_EF_OSVT` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `oo_classId` varchar(50) DEFAULT 'EF_OSVT',
  `oo_className` varchar(255) DEFAULT 'OnlineShopVoucherToken',
  `tokenId` double DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `voucherSeries__id` int(11) DEFAULT NULL,
  `voucherSeries__type` enum('document','asset','object') DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_query_EF_OSVT__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_query_EF_OTCP`;
CREATE TABLE `object_query_EF_OTCP` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `oo_classId` varchar(50) DEFAULT 'EF_OTCP',
  `oo_className` varchar(255) DEFAULT 'OfferToolCustomProduct',
  `OSproductNumber` varchar(255) DEFAULT NULL,
  `OSName` varchar(255) DEFAULT NULL,
  `productGroup` varchar(190) DEFAULT NULL,
  `price` decimal(19,4) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_query_EF_OTCP__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_query_EF_OTO`;
CREATE TABLE `object_query_EF_OTO` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `oo_classId` varchar(50) DEFAULT 'EF_OTO',
  `oo_className` varchar(255) DEFAULT 'OfferToolOffer',
  `offernumber` varchar(255) DEFAULT NULL,
  `dateCreated` bigint(20) DEFAULT NULL,
  `dateValidUntil` bigint(20) DEFAULT NULL,
  `totalPriceBeforeDiscount` decimal(19,4) DEFAULT NULL,
  `totalPrice` decimal(19,4) DEFAULT NULL,
  `discountType` varchar(190) DEFAULT NULL,
  `discount` decimal(19,4) DEFAULT NULL,
  `cartId` varchar(255) DEFAULT NULL,
  `items` text DEFAULT NULL,
  `customItems` text DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_query_EF_OTO__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_query_EF_OTOI`;
CREATE TABLE `object_query_EF_OTOI` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `oo_classId` varchar(50) DEFAULT 'EF_OTOI',
  `oo_className` varchar(255) DEFAULT 'OfferToolOfferItem',
  `product__id` int(11) DEFAULT NULL,
  `product__type` enum('document','asset','object') DEFAULT NULL,
  `productNumber` varchar(255) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `originalTotalPrice` decimal(19,4) DEFAULT NULL,
  `DiscountType` varchar(190) DEFAULT NULL,
  `discount` decimal(19,4) DEFAULT NULL,
  `finalTotalPrice` decimal(19,4) DEFAULT NULL,
  `subItems` text DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `cartItemKey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_query_EF_OTOI__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_query_EV`;
CREATE TABLE `object_query_EV` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `oo_classId` varchar(50) DEFAULT 'EV',
  `oo_className` varchar(255) DEFAULT 'Event',
  `tags` text DEFAULT NULL,
  `locationAddress` longtext DEFAULT NULL,
  `locationMap__longitude` double DEFAULT NULL,
  `locationMap__latitude` double DEFAULT NULL,
  `fromDate` bigint(20) DEFAULT NULL,
  `toDate` bigint(20) DEFAULT NULL,
  `mainImage` int(11) DEFAULT NULL,
  `video` text DEFAULT NULL,
  `images__images` text DEFAULT NULL,
  `images__hotspots` longtext DEFAULT NULL,
  `contactName` varchar(255) DEFAULT NULL,
  `contactPhone` varchar(190) DEFAULT NULL,
  `contactEmail` varchar(190) DEFAULT NULL,
  `contactAddress` longtext DEFAULT NULL,
  `cars` text DEFAULT NULL,
  `status` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_query_EV__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_query_NE`;
CREATE TABLE `object_query_NE` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `oo_classId` varchar(50) DEFAULT 'NE',
  `oo_className` varchar(255) DEFAULT 'News',
  `date` bigint(20) DEFAULT NULL,
  `gallery__images` text DEFAULT NULL,
  `gallery__hotspots` longtext DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_query_NE__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_query_StaticImportedProductType1`;
CREATE TABLE `object_query_StaticImportedProductType1` (
  `oo_id` int(11) unsigned NOT NULL DEFAULT 0,
  `oo_classId` varchar(50) DEFAULT 'StaticImportedProductType1',
  `oo_className` varchar(255) DEFAULT 'StaticImportedProductType1',
  `Title` varchar(190) DEFAULT NULL,
  `Manufacturer` varchar(190) DEFAULT NULL,
  `Description` varchar(190) DEFAULT NULL,
  `Intro` varchar(190) DEFAULT NULL,
  `PriceUnit` varchar(190) DEFAULT NULL,
  `ProducerStory` varchar(190) DEFAULT NULL,
  `PropertiesHeight` varchar(190) DEFAULT NULL,
  `PropertiesProducer` varchar(190) DEFAULT NULL,
  `PropertiesProcess` varchar(190) DEFAULT NULL,
  `PropertiesOrigin` varchar(190) DEFAULT NULL,
  `PropertiesVariety` varchar(190) DEFAULT NULL,
  `TasteProfile` text DEFAULT NULL,
  `PriceUnitReference` varchar(190) DEFAULT NULL,
  `PriceIncludesTax` varchar(190) DEFAULT NULL,
  `DeliveryTime` varchar(190) DEFAULT NULL,
  `Altitude` varchar(190) DEFAULT NULL,
  `Producers` varchar(190) DEFAULT NULL,
  `Process` varchar(190) DEFAULT NULL,
  `Origin` varchar(190) DEFAULT NULL,
  `Variety` varchar(190) DEFAULT NULL,
  `TasteNotes` text DEFAULT NULL,
  `DetailedDescription` varchar(190) DEFAULT NULL,
  `ProducerInformation` varchar(190) DEFAULT NULL,
  `IntroDescription` varchar(190) DEFAULT NULL,
  `BasePrice` varchar(190) DEFAULT NULL,
  `TaxInfo` varchar(190) DEFAULT NULL,
  `ProductProperties` varchar(190) DEFAULT NULL,
  `Taste` text DEFAULT NULL,
  `ProductDetailDescription` varchar(190) DEFAULT NULL,
  `AdditionalDescription` varchar(190) DEFAULT NULL,
  `ProducerDetails` varchar(190) DEFAULT NULL,
  `ProducerInfo` varchar(190) DEFAULT NULL,
  `PriceInfo` varchar(190) DEFAULT NULL,
  `DescriptionIntro` varchar(190) DEFAULT NULL,
  `DeliveryInfo` varchar(190) DEFAULT NULL,
  `Attributes` varchar(190) DEFAULT NULL,
  `TheStoryBehind` varchar(190) DEFAULT NULL,
  `LongDescription` varchar(190) DEFAULT NULL,
  `MeetTheProducer` varchar(190) DEFAULT NULL,
  `Varietal` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_query_StaticImportedProductType1__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_relations_1`;
CREATE TABLE `object_relations_1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src_id` int(10) unsigned NOT NULL DEFAULT 0,
  `dest_id` int(11) NOT NULL DEFAULT 0,
  `type` enum('object','asset','document') NOT NULL,
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index` (`index`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`),
  KEY `IDX_53B87ADFFF529AC` (`src_id`),
  CONSTRAINT `fk_object_relations_1__src_id` FOREIGN KEY (`src_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_relations_2`;
CREATE TABLE `object_relations_2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src_id` int(10) unsigned NOT NULL DEFAULT 0,
  `dest_id` int(11) NOT NULL DEFAULT 0,
  `type` enum('object','asset','document') NOT NULL,
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index` (`index`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`),
  KEY `IDX_CAB12B65FF529AC` (`src_id`),
  CONSTRAINT `fk_object_relations_2__src_id` FOREIGN KEY (`src_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_relations_4`;
CREATE TABLE `object_relations_4` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src_id` int(10) unsigned NOT NULL DEFAULT 0,
  `dest_id` int(11) NOT NULL DEFAULT 0,
  `type` enum('object','asset','document') NOT NULL,
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index` (`index`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`),
  KEY `IDX_23D28E50FF529AC` (`src_id`),
  CONSTRAINT `fk_object_relations_4__src_id` FOREIGN KEY (`src_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_relations_5`;
CREATE TABLE `object_relations_5` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src_id` int(10) unsigned NOT NULL DEFAULT 0,
  `dest_id` int(11) NOT NULL DEFAULT 0,
  `type` enum('object','asset','document') NOT NULL,
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index` (`index`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`),
  KEY `IDX_54D5BEC6FF529AC` (`src_id`),
  CONSTRAINT `fk_object_relations_5__src_id` FOREIGN KEY (`src_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_relations_CU`;
CREATE TABLE `object_relations_CU` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src_id` int(10) unsigned NOT NULL DEFAULT 0,
  `dest_id` int(11) NOT NULL DEFAULT 0,
  `type` enum('object','asset','document') NOT NULL,
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index` (`index`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`),
  KEY `IDX_C23526BDFF529AC` (`src_id`),
  CONSTRAINT `fk_object_relations_CU__src_id` FOREIGN KEY (`src_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_relations_EF_FD`;
CREATE TABLE `object_relations_EF_FD` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src_id` int(10) unsigned NOT NULL DEFAULT 0,
  `dest_id` int(11) NOT NULL DEFAULT 0,
  `type` enum('object','asset','document') NOT NULL,
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index` (`index`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`),
  KEY `IDX_DA34FAC2FF529AC` (`src_id`),
  CONSTRAINT `fk_object_relations_EF_FD__src_id` FOREIGN KEY (`src_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_relations_EF_OSO`;
CREATE TABLE `object_relations_EF_OSO` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src_id` int(10) unsigned NOT NULL DEFAULT 0,
  `dest_id` int(11) NOT NULL DEFAULT 0,
  `type` enum('object','asset','document') NOT NULL,
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index` (`index`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`),
  KEY `IDX_4B839BF3FF529AC` (`src_id`),
  CONSTRAINT `fk_object_relations_EF_OSO__src_id` FOREIGN KEY (`src_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_relations_EF_OSOI`;
CREATE TABLE `object_relations_EF_OSOI` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src_id` int(10) unsigned NOT NULL DEFAULT 0,
  `dest_id` int(11) NOT NULL DEFAULT 0,
  `type` enum('object','asset','document') NOT NULL,
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index` (`index`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`),
  KEY `IDX_F9FD3684FF529AC` (`src_id`),
  CONSTRAINT `fk_object_relations_EF_OSOI__src_id` FOREIGN KEY (`src_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_relations_EF_OSTC`;
CREATE TABLE `object_relations_EF_OSTC` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src_id` int(10) unsigned NOT NULL DEFAULT 0,
  `dest_id` int(11) NOT NULL DEFAULT 0,
  `type` enum('object','asset','document') NOT NULL,
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index` (`index`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`),
  KEY `IDX_B01E1400FF529AC` (`src_id`),
  CONSTRAINT `fk_object_relations_EF_OSTC__src_id` FOREIGN KEY (`src_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_relations_EF_OSVS`;
CREATE TABLE `object_relations_EF_OSVS` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src_id` int(10) unsigned NOT NULL DEFAULT 0,
  `dest_id` int(11) NOT NULL DEFAULT 0,
  `type` enum('object','asset','document') NOT NULL,
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index` (`index`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`),
  KEY `IDX_9F9F66E6FF529AC` (`src_id`),
  CONSTRAINT `fk_object_relations_EF_OSVS__src_id` FOREIGN KEY (`src_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_relations_EF_OSVT`;
CREATE TABLE `object_relations_EF_OSVT` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src_id` int(10) unsigned NOT NULL DEFAULT 0,
  `dest_id` int(11) NOT NULL DEFAULT 0,
  `type` enum('object','asset','document') NOT NULL,
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index` (`index`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`),
  KEY `IDX_1FBF345FF529AC` (`src_id`),
  CONSTRAINT `fk_object_relations_EF_OSVT__src_id` FOREIGN KEY (`src_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_relations_EF_OTCP`;
CREATE TABLE `object_relations_EF_OTCP` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src_id` int(10) unsigned NOT NULL DEFAULT 0,
  `dest_id` int(11) NOT NULL DEFAULT 0,
  `type` enum('object','asset','document') NOT NULL,
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index` (`index`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`),
  KEY `IDX_346CC7CDFF529AC` (`src_id`),
  CONSTRAINT `fk_object_relations_EF_OTCP__src_id` FOREIGN KEY (`src_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_relations_EF_OTO`;
CREATE TABLE `object_relations_EF_OTO` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src_id` int(10) unsigned NOT NULL DEFAULT 0,
  `dest_id` int(11) NOT NULL DEFAULT 0,
  `type` enum('object','asset','document') NOT NULL,
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index` (`index`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`),
  KEY `IDX_4C20D34FF529AC` (`src_id`),
  CONSTRAINT `fk_object_relations_EF_OTO__src_id` FOREIGN KEY (`src_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_relations_EF_OTOI`;
CREATE TABLE `object_relations_EF_OTOI` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src_id` int(10) unsigned NOT NULL DEFAULT 0,
  `dest_id` int(11) NOT NULL DEFAULT 0,
  `type` enum('object','asset','document') NOT NULL,
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index` (`index`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`),
  KEY `IDX_FCB22001FF529AC` (`src_id`),
  CONSTRAINT `fk_object_relations_EF_OTOI__src_id` FOREIGN KEY (`src_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_relations_EV`;
CREATE TABLE `object_relations_EV` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src_id` int(10) unsigned NOT NULL DEFAULT 0,
  `dest_id` int(11) NOT NULL DEFAULT 0,
  `type` enum('object','asset','document') NOT NULL,
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index` (`index`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`),
  KEY `IDX_D66D081FF529AC` (`src_id`),
  CONSTRAINT `fk_object_relations_EV__src_id` FOREIGN KEY (`src_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_relations_NE`;
CREATE TABLE `object_relations_NE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src_id` int(10) unsigned NOT NULL DEFAULT 0,
  `dest_id` int(11) NOT NULL DEFAULT 0,
  `type` enum('object','asset','document') NOT NULL,
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index` (`index`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`),
  KEY `IDX_6A2C4894FF529AC` (`src_id`),
  CONSTRAINT `fk_object_relations_NE__src_id` FOREIGN KEY (`src_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_relations_StaticImportedProductType1`;
CREATE TABLE `object_relations_StaticImportedProductType1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src_id` int(11) unsigned NOT NULL DEFAULT 0,
  `dest_id` int(11) unsigned NOT NULL DEFAULT 0,
  `type` enum('object','asset','document') NOT NULL,
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT 0,
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `forward_lookup` (`src_id`,`ownertype`,`ownername`,`position`),
  KEY `reverse_lookup` (`dest_id`,`type`),
  KEY `fieldname` (`fieldname`),
  CONSTRAINT `fk_object_relations_StaticImportedProductType1__src_id` FOREIGN KEY (`src_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_store_1`;
CREATE TABLE `object_store_1` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `reference` varchar(190) DEFAULT NULL,
  `calculated` tinyint(1) DEFAULT NULL,
  `showAsFilter` tinyint(1) DEFAULT NULL,
  `filterSortOrder` bigint(20) DEFAULT NULL,
  `exportNewsletterProvider` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_store_1__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_store_2`;
CREATE TABLE `object_store_2` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `calculated` tinyint(1) DEFAULT NULL,
  `useAsTargetGroup` tinyint(1) DEFAULT NULL,
  `targetGroup` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_store_2__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_store_4`;
CREATE TABLE `object_store_4` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(190) DEFAULT NULL,
  `terms` longtext DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_store_4__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_store_5`;
CREATE TABLE `object_store_5` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `code` varchar(190) DEFAULT NULL,
  `attributeType` varchar(190) DEFAULT NULL,
  `label` varchar(190) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `active` varchar(190) DEFAULT NULL,
  `utm_source` varchar(190) DEFAULT NULL,
  `utm_medium` varchar(190) DEFAULT NULL,
  `utm_campaign` varchar(190) DEFAULT NULL,
  `utm_term` varchar(190) DEFAULT NULL,
  `utm_content` varchar(190) DEFAULT NULL,
  `attributes` longtext DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_store_5__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_store_CU`;
CREATE TABLE `object_store_CU` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `active` tinyint(1) DEFAULT NULL,
  `gender` varchar(190) DEFAULT NULL,
  `firstname` varchar(190) DEFAULT NULL,
  `lastname` varchar(190) DEFAULT NULL,
  `email` varchar(190) DEFAULT NULL,
  `street` varchar(190) DEFAULT NULL,
  `zip` varchar(190) DEFAULT NULL,
  `city` varchar(190) DEFAULT NULL,
  `countryCode` varchar(190) DEFAULT NULL,
  `phone` varchar(190) DEFAULT NULL,
  `idEncoded` varchar(190) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `company` varchar(190) DEFAULT NULL,
  `passwordRecoveryToken` varchar(190) DEFAULT NULL,
  `passwordRecoveryTokenDate` bigint(20) DEFAULT NULL,
  `customerLanguage` varchar(190) DEFAULT NULL,
  `newsletter__consent` tinyint(1) DEFAULT NULL,
  `newsletter__note` int(11) DEFAULT NULL,
  `newsletterActive` tinyint(1) DEFAULT NULL,
  `newsletterConfirmed` tinyint(1) DEFAULT NULL,
  `profiling__consent` tinyint(1) DEFAULT NULL,
  `profiling__note` int(11) DEFAULT NULL,
  `newsletterConfirmToken` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_store_CU__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_store_EF_FD`;
CREATE TABLE `object_store_EF_FD` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `pageLimit` double DEFAULT NULL,
  `defaultOrderByInheritance` varchar(190) DEFAULT NULL,
  `orderByAsc` longtext DEFAULT NULL,
  `orderByDesc` longtext DEFAULT NULL,
  `ajaxReload` tinyint(1) DEFAULT NULL,
  `infiniteScroll` tinyint(1) DEFAULT NULL,
  `limitOnFirstLoad` double DEFAULT NULL,
  `conditionsInheritance` varchar(190) DEFAULT NULL,
  `filtersInheritance` varchar(190) DEFAULT NULL,
  `similarityFieldsInheritance` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_store_EF_FD__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_store_EF_OSO`;
CREATE TABLE `object_store_EF_OSO` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `ordernumber` varchar(255) DEFAULT NULL,
  `orderState` varchar(190) DEFAULT NULL,
  `orderdate` bigint(20) DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `customerOrderData` varchar(255) DEFAULT NULL,
  `subTotalNetPrice` decimal(19,4) DEFAULT NULL,
  `subTotalPrice` decimal(19,4) DEFAULT NULL,
  `totalNetPrice` decimal(19,4) DEFAULT NULL,
  `totalPrice` decimal(19,4) DEFAULT NULL,
  `taxInfo` longtext DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `cartId` varchar(190) DEFAULT NULL,
  `customerFirstname` varchar(255) DEFAULT NULL,
  `customerLastname` varchar(255) DEFAULT NULL,
  `customerCompany` varchar(255) DEFAULT NULL,
  `customerStreet` varchar(255) DEFAULT NULL,
  `customerZip` varchar(255) DEFAULT NULL,
  `customerCity` varchar(255) DEFAULT NULL,
  `customerCountry` varchar(190) DEFAULT NULL,
  `customerEmail` varchar(255) DEFAULT NULL,
  `deliveryFirstname` varchar(255) DEFAULT NULL,
  `deliveryLastname` varchar(255) DEFAULT NULL,
  `deliveryCompany` varchar(255) DEFAULT NULL,
  `deliveryStreet` varchar(255) DEFAULT NULL,
  `deliveryZip` varchar(255) DEFAULT NULL,
  `deliveryCity` varchar(255) DEFAULT NULL,
  `deliveryCountry` varchar(190) DEFAULT NULL,
  `paymentReference` varchar(255) DEFAULT NULL,
  `cartHash` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_store_EF_OSO__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_store_EF_OSOI`;
CREATE TABLE `object_store_EF_OSOI` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `orderState` varchar(190) DEFAULT NULL,
  `productNumber` varchar(255) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `totalNetPrice` decimal(19,4) DEFAULT NULL,
  `totalPrice` decimal(19,4) DEFAULT NULL,
  `taxInfo` longtext DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_store_EF_OSOI__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_store_EF_OSTC`;
CREATE TABLE `object_store_EF_OSTC` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `taxEntryCombinationType` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_store_EF_OSTC__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_store_EF_OSVS`;
CREATE TABLE `object_store_EF_OSVS` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_store_EF_OSVS__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_store_EF_OSVT`;
CREATE TABLE `object_store_EF_OSVT` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `tokenId` double DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_store_EF_OSVT__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_store_EF_OTCP`;
CREATE TABLE `object_store_EF_OTCP` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `OSproductNumber` varchar(255) DEFAULT NULL,
  `OSName` varchar(255) DEFAULT NULL,
  `productGroup` varchar(190) DEFAULT NULL,
  `price` decimal(19,4) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_store_EF_OTCP__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_store_EF_OTO`;
CREATE TABLE `object_store_EF_OTO` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `offernumber` varchar(255) DEFAULT NULL,
  `dateCreated` bigint(20) DEFAULT NULL,
  `dateValidUntil` bigint(20) DEFAULT NULL,
  `totalPriceBeforeDiscount` decimal(19,4) DEFAULT NULL,
  `totalPrice` decimal(19,4) DEFAULT NULL,
  `discountType` varchar(190) DEFAULT NULL,
  `discount` decimal(19,4) DEFAULT NULL,
  `cartId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_store_EF_OTO__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_store_EF_OTOI`;
CREATE TABLE `object_store_EF_OTOI` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `productNumber` varchar(255) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `originalTotalPrice` decimal(19,4) DEFAULT NULL,
  `DiscountType` varchar(190) DEFAULT NULL,
  `discount` decimal(19,4) DEFAULT NULL,
  `finalTotalPrice` decimal(19,4) DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `cartItemKey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_store_EF_OTOI__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_store_EV`;
CREATE TABLE `object_store_EV` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `tags` text DEFAULT NULL,
  `locationAddress` longtext DEFAULT NULL,
  `locationMap__longitude` double DEFAULT NULL,
  `locationMap__latitude` double DEFAULT NULL,
  `fromDate` bigint(20) DEFAULT NULL,
  `toDate` bigint(20) DEFAULT NULL,
  `mainImage` int(11) DEFAULT NULL,
  `video` text DEFAULT NULL,
  `images__images` text DEFAULT NULL,
  `images__hotspots` longtext DEFAULT NULL,
  `contactName` varchar(255) DEFAULT NULL,
  `contactPhone` varchar(190) DEFAULT NULL,
  `contactEmail` varchar(190) DEFAULT NULL,
  `contactAddress` longtext DEFAULT NULL,
  `status` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_store_EV__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_store_NE`;
CREATE TABLE `object_store_NE` (
  `oo_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date` bigint(20) DEFAULT NULL,
  `gallery__images` text DEFAULT NULL,
  `gallery__hotspots` longtext DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_store_NE__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `object_store_StaticImportedProductType1`;
CREATE TABLE `object_store_StaticImportedProductType1` (
  `oo_id` int(11) unsigned NOT NULL DEFAULT 0,
  `Title` varchar(190) DEFAULT NULL,
  `Manufacturer` varchar(190) DEFAULT NULL,
  `Description` varchar(190) DEFAULT NULL,
  `Intro` varchar(190) DEFAULT NULL,
  `PriceUnit` varchar(190) DEFAULT NULL,
  `ProducerStory` varchar(190) DEFAULT NULL,
  `PropertiesHeight` varchar(190) DEFAULT NULL,
  `PropertiesProducer` varchar(190) DEFAULT NULL,
  `PropertiesProcess` varchar(190) DEFAULT NULL,
  `PropertiesOrigin` varchar(190) DEFAULT NULL,
  `PropertiesVariety` varchar(190) DEFAULT NULL,
  `TasteProfile` text DEFAULT NULL,
  `PriceUnitReference` varchar(190) DEFAULT NULL,
  `PriceIncludesTax` varchar(190) DEFAULT NULL,
  `DeliveryTime` varchar(190) DEFAULT NULL,
  `Altitude` varchar(190) DEFAULT NULL,
  `Producers` varchar(190) DEFAULT NULL,
  `Process` varchar(190) DEFAULT NULL,
  `Origin` varchar(190) DEFAULT NULL,
  `Variety` varchar(190) DEFAULT NULL,
  `TasteNotes` text DEFAULT NULL,
  `DetailedDescription` varchar(190) DEFAULT NULL,
  `ProducerInformation` varchar(190) DEFAULT NULL,
  `IntroDescription` varchar(190) DEFAULT NULL,
  `BasePrice` varchar(190) DEFAULT NULL,
  `TaxInfo` varchar(190) DEFAULT NULL,
  `ProductProperties` varchar(190) DEFAULT NULL,
  `Taste` text DEFAULT NULL,
  `ProductDetailDescription` varchar(190) DEFAULT NULL,
  `AdditionalDescription` varchar(190) DEFAULT NULL,
  `ProducerDetails` varchar(190) DEFAULT NULL,
  `ProducerInfo` varchar(190) DEFAULT NULL,
  `PriceInfo` varchar(190) DEFAULT NULL,
  `DescriptionIntro` varchar(190) DEFAULT NULL,
  `DeliveryInfo` varchar(190) DEFAULT NULL,
  `Attributes` varchar(190) DEFAULT NULL,
  `TheStoryBehind` varchar(190) DEFAULT NULL,
  `LongDescription` varchar(190) DEFAULT NULL,
  `MeetTheProducer` varchar(190) DEFAULT NULL,
  `Varietal` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`oo_id`),
  CONSTRAINT `fk_object_store_StaticImportedProductType1__oo_id` FOREIGN KEY (`oo_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `plugin_cmf_actiontrigger_actions`;
CREATE TABLE `plugin_cmf_actiontrigger_actions` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `ruleId` int(20) unsigned NOT NULL,
  `actionDelay` int(20) unsigned NOT NULL,
  `implementationClass` varchar(255) NOT NULL,
  `options` text DEFAULT NULL,
  `creationDate` bigint(20) NOT NULL,
  `modificationDate` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ruleId` (`ruleId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



DROP TABLE IF EXISTS `plugin_cmf_actiontrigger_queue`;
CREATE TABLE `plugin_cmf_actiontrigger_queue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customerId` int(11) unsigned NOT NULL,
  `actionDate` bigint(20) unsigned DEFAULT NULL,
  `actionId` int(11) unsigned DEFAULT NULL,
  `creationDate` bigint(20) unsigned DEFAULT NULL,
  `modificationDate` bigint(20) unsigned DEFAULT NULL,
  `environment` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customerId` (`customerId`),
  KEY `actionId` (`actionId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



DROP TABLE IF EXISTS `plugin_cmf_actiontrigger_rules`;
CREATE TABLE `plugin_cmf_actiontrigger_rules` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `trigger` text DEFAULT NULL COMMENT 'configuration of triggers',
  `condition` text DEFAULT NULL COMMENT 'configuration of conditions',
  `creationDate` int(11) NOT NULL,
  `modificationDate` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



DROP TABLE IF EXISTS `plugin_cmf_activities`;
CREATE TABLE `plugin_cmf_activities` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customerId` int(11) unsigned NOT NULL,
  `activityDate` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `implementationClass` varchar(255) NOT NULL,
  `o_id` int(11) unsigned DEFAULT NULL,
  `a_id` varchar(255) DEFAULT NULL,
  `attributes` blob DEFAULT NULL,
  `md5` char(32) DEFAULT NULL,
  `creationDate` bigint(20) unsigned DEFAULT NULL,
  `modificationDate` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customerId` (`customerId`),
  KEY `o_id` (`o_id`),
  KEY `a_id` (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



DROP TABLE IF EXISTS `plugin_cmf_activities_metadata`;
CREATE TABLE `plugin_cmf_activities_metadata` (
  `activityId` int(20) NOT NULL,
  `key` varchar(150) NOT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`activityId`,`key`),
  KEY `activityId` (`activityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;



DROP TABLE IF EXISTS `plugin_cmf_customer_filter_definition`;
CREATE TABLE `plugin_cmf_customer_filter_definition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ownerId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `definition` text NOT NULL,
  `allowedUserIds` text DEFAULT NULL,
  `readOnly` bit(1) DEFAULT b'0',
  `shortcutAvailable` bit(1) DEFAULT b'0',
  `creationDate` datetime DEFAULT current_timestamp(),
  `modificationDate` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



DROP TABLE IF EXISTS `plugin_cmf_deletions`;
CREATE TABLE `plugin_cmf_deletions` (
  `id` int(11) unsigned NOT NULL,
  `entityType` char(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `creationDate` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`,`entityType`,`type`),
  KEY `type` (`entityType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



DROP TABLE IF EXISTS `plugin_cmf_duplicates_false_positives`;
CREATE TABLE `plugin_cmf_duplicates_false_positives` (
  `row1` text NOT NULL,
  `row2` text NOT NULL,
  `row1Details` text NOT NULL,
  `row2Details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



DROP TABLE IF EXISTS `plugin_cmf_duplicatesindex`;
CREATE TABLE `plugin_cmf_duplicatesindex` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `duplicateData` text NOT NULL,
  `duplicateDataMd5` varchar(32) DEFAULT NULL,
  `fieldCombination` char(255) NOT NULL DEFAULT '',
  `fieldCombinationCrc` int(11) unsigned NOT NULL,
  `metaphone` varchar(50) DEFAULT NULL,
  `soundex` varchar(50) DEFAULT NULL,
  `creationDate` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `duplicateDataCrc` (`duplicateDataMd5`),
  KEY `fieldCombination` (`fieldCombination`),
  KEY `soundex` (`soundex`),
  KEY `metaphone` (`metaphone`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



DROP TABLE IF EXISTS `plugin_cmf_duplicatesindex_customers`;
CREATE TABLE `plugin_cmf_duplicatesindex_customers` (
  `duplicate_id` int(11) unsigned NOT NULL,
  `customer_id` int(11) unsigned NOT NULL,
  KEY `duplicate_id` (`duplicate_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



DROP TABLE IF EXISTS `plugin_cmf_newsletter_queue`;
CREATE TABLE `plugin_cmf_newsletter_queue` (
  `customerId` int(11) unsigned NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `operation` varchar(20) DEFAULT NULL,
  `modificationDate` bigint(20) DEFAULT NULL,
  UNIQUE KEY `customerId` (`customerId`),
  KEY `operation` (`operation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



DROP TABLE IF EXISTS `plugin_cmf_potential_duplicates`;
CREATE TABLE `plugin_cmf_potential_duplicates` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `duplicateCustomerIds` varchar(255) NOT NULL DEFAULT '',
  `fieldCombinations` text NOT NULL,
  `declined` tinyint(1) DEFAULT NULL,
  `modificationDate` bigint(20) unsigned DEFAULT NULL,
  `creationDate` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `duplicateIds` (`duplicateCustomerIds`),
  KEY `declined` (`declined`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



DROP TABLE IF EXISTS `plugin_cmf_segment_assignment`;
CREATE TABLE `plugin_cmf_segment_assignment` (
  `elementId` int(11) NOT NULL,
  `elementType` enum('document','asset','object') NOT NULL,
  `segments` text DEFAULT NULL,
  `breaksInheritance` tinyint(4) DEFAULT NULL,
  `inPreparation` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`elementId`,`elementType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `plugin_cmf_segment_assignment_index`;
CREATE TABLE `plugin_cmf_segment_assignment_index` (
  `elementId` int(11) NOT NULL,
  `elementType` enum('document','asset','object') NOT NULL,
  `segmentId` int(11) NOT NULL,
  PRIMARY KEY (`elementId`,`elementType`,`segmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `plugin_cmf_segment_assignment_queue`;
CREATE TABLE `plugin_cmf_segment_assignment_queue` (
  `elementId` int(11) NOT NULL,
  `elementType` enum('document','asset','object') NOT NULL,
  PRIMARY KEY (`elementId`,`elementType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `plugin_cmf_segmentbuilder_changes_queue`;
CREATE TABLE `plugin_cmf_segmentbuilder_changes_queue` (
  `customerId` int(11) unsigned NOT NULL,
  UNIQUE KEY `customerId` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



DROP TABLE IF EXISTS `plugin_cmf_sequence_numbers`;
CREATE TABLE `plugin_cmf_sequence_numbers` (
  `name` char(50) NOT NULL,
  `number` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



DROP TABLE IF EXISTS `plugin_datahub_workspaces_asset`;
CREATE TABLE `plugin_datahub_workspaces_asset` (
  `cid` int(11) unsigned NOT NULL DEFAULT 0,
  `cpath` varchar(765) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `configuration` varchar(50) NOT NULL DEFAULT '0',
  `create` tinyint(1) unsigned DEFAULT 0,
  `read` tinyint(1) unsigned DEFAULT 0,
  `update` tinyint(1) unsigned DEFAULT 0,
  `delete` tinyint(1) unsigned DEFAULT 0,
  PRIMARY KEY (`cid`,`configuration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `plugin_datahub_workspaces_document`;
CREATE TABLE `plugin_datahub_workspaces_document` (
  `cid` int(11) unsigned NOT NULL DEFAULT 0,
  `cpath` varchar(765) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `configuration` varchar(50) NOT NULL DEFAULT '0',
  `create` tinyint(1) unsigned DEFAULT 0,
  `read` tinyint(1) unsigned DEFAULT 0,
  `update` tinyint(1) unsigned DEFAULT 0,
  `delete` tinyint(1) unsigned DEFAULT 0,
  PRIMARY KEY (`cid`,`configuration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `plugin_datahub_workspaces_object`;
CREATE TABLE `plugin_datahub_workspaces_object` (
  `cid` int(11) unsigned NOT NULL DEFAULT 0,
  `cpath` varchar(765) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `configuration` varchar(50) NOT NULL DEFAULT '0',
  `create` tinyint(1) unsigned DEFAULT 0,
  `read` tinyint(1) unsigned DEFAULT 0,
  `update` tinyint(1) unsigned DEFAULT 0,
  `delete` tinyint(1) unsigned DEFAULT 0,
  PRIMARY KEY (`cid`,`configuration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `redirects`;
CREATE TABLE `redirects` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('entire_uri','path_query','path','auto_create') NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `sourceSite` int(11) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `targetSite` int(11) DEFAULT NULL,
  `statusCode` varchar(3) DEFAULT NULL,
  `priority` int(2) DEFAULT 0,
  `regex` tinyint(1) DEFAULT NULL,
  `passThroughParameters` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `expiry` int(11) unsigned DEFAULT NULL,
  `creationDate` int(11) unsigned DEFAULT 0,
  `modificationDate` int(11) unsigned DEFAULT 0,
  `userOwner` int(11) unsigned DEFAULT NULL,
  `userModification` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `priority` (`priority`),
  KEY `routing_lookup` (`active`,`regex`,`sourceSite`,`source`,`type`,`expiry`,`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;



DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `sess_id` varbinary(128) NOT NULL,
  `sess_data` longblob NOT NULL,
  `sess_lifetime` int(10) unsigned NOT NULL,
  `sess_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sess_id`),
  KEY `sess_lifetime_idx` (`sess_lifetime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



DROP TABLE IF EXISTS `shop_productindex`;
CREATE TABLE `shop_productindex` (
  `id` int(11) NOT NULL DEFAULT 0,
  `virtualProductId` int(11) NOT NULL,
  `virtualProductActive` tinyint(1) NOT NULL,
  `classId` int(11) NOT NULL,
  `parentId` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `categoryIds` varchar(255) NOT NULL,
  `parentCategoryIds` varchar(255) NOT NULL,
  `priceSystemName` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `inProductList` tinyint(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `milage` double DEFAULT NULL,
  `length` double DEFAULT NULL,
  `width` double DEFAULT NULL,
  `wheelbase` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `carClass` varchar(255) DEFAULT NULL,
  `power` double DEFAULT NULL,
  `manufacturer_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `search` (`name`,`manufacturer_name`,`color`,`carClass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;



DROP TABLE IF EXISTS `shop_productindex_relations`;
CREATE TABLE `shop_productindex_relations` (
  `src` int(11) NOT NULL,
  `src_virtualProductId` int(11) NOT NULL,
  `dest` int(11) NOT NULL,
  `fieldname` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`src`,`dest`,`fieldname`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;



DROP TABLE IF EXISTS `targeting_rules`;
CREATE TABLE `targeting_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `scope` varchar(50) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `prio` smallint(5) unsigned NOT NULL DEFAULT 0,
  `conditions` longtext DEFAULT NULL,
  `actions` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `targeting_storage`;
CREATE TABLE `targeting_storage` (
  `visitorId` varchar(100) NOT NULL,
  `scope` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `modificationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`visitorId`,`scope`,`name`),
  KEY `targeting_storage_scope_index` (`scope`),
  KEY `targeting_storage_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `targeting_target_groups`;
CREATE TABLE `targeting_target_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `threshold` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `translations_admin`;
CREATE TABLE `translations_admin` (
  `key` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `type` varchar(10) DEFAULT NULL,
  `language` varchar(10) NOT NULL DEFAULT '',
  `text` text DEFAULT NULL,
  `creationDate` int(11) unsigned DEFAULT NULL,
  `modificationDate` int(11) unsigned DEFAULT NULL,
  `userOwner` int(11) unsigned DEFAULT NULL,
  `userModification` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`key`,`language`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


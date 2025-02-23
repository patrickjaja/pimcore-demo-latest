
SET NAMES utf8mb4;



DROP VIEW IF EXISTS `object_1`;
CREATE ALGORITHM=UNDEFINED  VIEW `object_1` AS select `object_query_1`.`oo_id` AS `oo_id`,`object_query_1`.`oo_classId` AS `oo_classId`,`object_query_1`.`oo_className` AS `oo_className`,`object_query_1`.`name` AS `name`,`object_query_1`.`reference` AS `reference`,`object_query_1`.`calculated` AS `calculated`,`object_query_1`.`showAsFilter` AS `showAsFilter`,`object_query_1`.`filterSortOrder` AS `filterSortOrder`,`object_query_1`.`exportNewsletterProvider` AS `exportNewsletterProvider`,`objects`.`id` AS `id`,`objects`.`parentId` AS `parentId`,`objects`.`type` AS `type`,`objects`.`key` AS `key`,`objects`.`path` AS `path`,`objects`.`index` AS `index`,`objects`.`published` AS `published`,`objects`.`creationDate` AS `creationDate`,`objects`.`modificationDate` AS `modificationDate`,`objects`.`userOwner` AS `userOwner`,`objects`.`userModification` AS `userModification`,`objects`.`classId` AS `classId`,`objects`.`className` AS `className`,`objects`.`childrenSortBy` AS `childrenSortBy`,`objects`.`childrenSortOrder` AS `childrenSortOrder`,`objects`.`versionCount` AS `versionCount` from (`object_query_1` join `objects` on(`objects`.`id` = `object_query_1`.`oo_id`));

DROP VIEW IF EXISTS `object_2`;
CREATE ALGORITHM=UNDEFINED  VIEW `object_2` AS select `object_query_2`.`oo_id` AS `oo_id`,`object_query_2`.`oo_classId` AS `oo_classId`,`object_query_2`.`oo_className` AS `oo_className`,`object_query_2`.`name` AS `name`,`object_query_2`.`group__id` AS `group__id`,`object_query_2`.`group__type` AS `group__type`,`object_query_2`.`reference` AS `reference`,`object_query_2`.`calculated` AS `calculated`,`object_query_2`.`useAsTargetGroup` AS `useAsTargetGroup`,`object_query_2`.`targetGroup` AS `targetGroup`,`objects`.`id` AS `id`,`objects`.`parentId` AS `parentId`,`objects`.`type` AS `type`,`objects`.`key` AS `key`,`objects`.`path` AS `path`,`objects`.`index` AS `index`,`objects`.`published` AS `published`,`objects`.`creationDate` AS `creationDate`,`objects`.`modificationDate` AS `modificationDate`,`objects`.`userOwner` AS `userOwner`,`objects`.`userModification` AS `userModification`,`objects`.`classId` AS `classId`,`objects`.`className` AS `className`,`objects`.`childrenSortBy` AS `childrenSortBy`,`objects`.`childrenSortOrder` AS `childrenSortOrder`,`objects`.`versionCount` AS `versionCount` from (`object_query_2` join `objects` on(`objects`.`id` = `object_query_2`.`oo_id`));

DROP VIEW IF EXISTS `object_4`;
CREATE ALGORITHM=UNDEFINED  VIEW `object_4` AS select `object_query_4`.`oo_id` AS `oo_id`,`object_query_4`.`oo_classId` AS `oo_classId`,`object_query_4`.`oo_className` AS `oo_className`,`object_query_4`.`name` AS `name`,`objects`.`id` AS `id`,`objects`.`parentId` AS `parentId`,`objects`.`type` AS `type`,`objects`.`key` AS `key`,`objects`.`path` AS `path`,`objects`.`index` AS `index`,`objects`.`published` AS `published`,`objects`.`creationDate` AS `creationDate`,`objects`.`modificationDate` AS `modificationDate`,`objects`.`userOwner` AS `userOwner`,`objects`.`userModification` AS `userModification`,`objects`.`classId` AS `classId`,`objects`.`className` AS `className`,`objects`.`childrenSortBy` AS `childrenSortBy`,`objects`.`childrenSortOrder` AS `childrenSortOrder`,`objects`.`versionCount` AS `versionCount` from (`object_query_4` join `objects` on(`objects`.`id` = `object_query_4`.`oo_id`));

DROP VIEW IF EXISTS `object_5`;
CREATE ALGORITHM=UNDEFINED  VIEW `object_5` AS select `object_query_5`.`oo_id` AS `oo_id`,`object_query_5`.`oo_classId` AS `oo_classId`,`object_query_5`.`oo_className` AS `oo_className`,`object_query_5`.`code` AS `code`,`object_query_5`.`attributeType` AS `attributeType`,`object_query_5`.`label` AS `label`,`object_query_5`.`link` AS `link`,`object_query_5`.`active` AS `active`,`object_query_5`.`utm_source` AS `utm_source`,`object_query_5`.`utm_medium` AS `utm_medium`,`object_query_5`.`utm_campaign` AS `utm_campaign`,`object_query_5`.`utm_term` AS `utm_term`,`object_query_5`.`utm_content` AS `utm_content`,`objects`.`id` AS `id`,`objects`.`parentId` AS `parentId`,`objects`.`type` AS `type`,`objects`.`key` AS `key`,`objects`.`path` AS `path`,`objects`.`index` AS `index`,`objects`.`published` AS `published`,`objects`.`creationDate` AS `creationDate`,`objects`.`modificationDate` AS `modificationDate`,`objects`.`userOwner` AS `userOwner`,`objects`.`userModification` AS `userModification`,`objects`.`classId` AS `classId`,`objects`.`className` AS `className`,`objects`.`childrenSortBy` AS `childrenSortBy`,`objects`.`childrenSortOrder` AS `childrenSortOrder`,`objects`.`versionCount` AS `versionCount` from (`object_query_5` join `objects` on(`objects`.`id` = `object_query_5`.`oo_id`));

DROP VIEW IF EXISTS `object_CU`;
CREATE ALGORITHM=UNDEFINED  VIEW `object_CU` AS select `object_query_CU`.`oo_id` AS `oo_id`,`object_query_CU`.`oo_classId` AS `oo_classId`,`object_query_CU`.`oo_className` AS `oo_className`,`object_query_CU`.`active` AS `active`,`object_query_CU`.`gender` AS `gender`,`object_query_CU`.`firstname` AS `firstname`,`object_query_CU`.`lastname` AS `lastname`,`object_query_CU`.`email` AS `email`,`object_query_CU`.`street` AS `street`,`object_query_CU`.`zip` AS `zip`,`object_query_CU`.`city` AS `city`,`object_query_CU`.`countryCode` AS `countryCode`,`object_query_CU`.`phone` AS `phone`,`object_query_CU`.`idEncoded` AS `idEncoded`,`object_query_CU`.`manualSegments` AS `manualSegments`,`object_query_CU`.`calculatedSegments` AS `calculatedSegments`,`object_query_CU`.`password` AS `password`,`object_query_CU`.`company` AS `company`,`object_query_CU`.`passwordRecoveryToken` AS `passwordRecoveryToken`,`object_query_CU`.`passwordRecoveryTokenDate` AS `passwordRecoveryTokenDate`,`object_query_CU`.`customerLanguage` AS `customerLanguage`,`object_query_CU`.`newsletter` AS `newsletter`,`object_query_CU`.`newsletterActive` AS `newsletterActive`,`object_query_CU`.`newsletterConfirmed` AS `newsletterConfirmed`,`object_query_CU`.`profiling` AS `profiling`,`object_query_CU`.`newsletterConfirmToken` AS `newsletterConfirmToken`,`objects`.`id` AS `id`,`objects`.`parentId` AS `parentId`,`objects`.`type` AS `type`,`objects`.`key` AS `key`,`objects`.`path` AS `path`,`objects`.`index` AS `index`,`objects`.`published` AS `published`,`objects`.`creationDate` AS `creationDate`,`objects`.`modificationDate` AS `modificationDate`,`objects`.`userOwner` AS `userOwner`,`objects`.`userModification` AS `userModification`,`objects`.`classId` AS `classId`,`objects`.`className` AS `className`,`objects`.`childrenSortBy` AS `childrenSortBy`,`objects`.`childrenSortOrder` AS `childrenSortOrder`,`objects`.`versionCount` AS `versionCount` from (`object_query_CU` join `objects` on(`objects`.`id` = `object_query_CU`.`oo_id`));

DROP VIEW IF EXISTS `object_EF_FD`;
CREATE ALGORITHM=UNDEFINED  VIEW `object_EF_FD` AS select `object_query_EF_FD`.`oo_id` AS `oo_id`,`object_query_EF_FD`.`oo_classId` AS `oo_classId`,`object_query_EF_FD`.`oo_className` AS `oo_className`,`object_query_EF_FD`.`pageLimit` AS `pageLimit`,`object_query_EF_FD`.`defaultOrderByInheritance` AS `defaultOrderByInheritance`,`object_query_EF_FD`.`orderByAsc` AS `orderByAsc`,`object_query_EF_FD`.`orderByDesc` AS `orderByDesc`,`object_query_EF_FD`.`ajaxReload` AS `ajaxReload`,`object_query_EF_FD`.`infiniteScroll` AS `infiniteScroll`,`object_query_EF_FD`.`limitOnFirstLoad` AS `limitOnFirstLoad`,`object_query_EF_FD`.`conditionsInheritance` AS `conditionsInheritance`,`object_query_EF_FD`.`filtersInheritance` AS `filtersInheritance`,`object_query_EF_FD`.`crossSellingCategory__id` AS `crossSellingCategory__id`,`object_query_EF_FD`.`crossSellingCategory__type` AS `crossSellingCategory__type`,`object_query_EF_FD`.`similarityFieldsInheritance` AS `similarityFieldsInheritance`,`objects`.`id` AS `id`,`objects`.`parentId` AS `parentId`,`objects`.`type` AS `type`,`objects`.`key` AS `key`,`objects`.`path` AS `path`,`objects`.`index` AS `index`,`objects`.`published` AS `published`,`objects`.`creationDate` AS `creationDate`,`objects`.`modificationDate` AS `modificationDate`,`objects`.`userOwner` AS `userOwner`,`objects`.`userModification` AS `userModification`,`objects`.`classId` AS `classId`,`objects`.`className` AS `className`,`objects`.`childrenSortBy` AS `childrenSortBy`,`objects`.`childrenSortOrder` AS `childrenSortOrder`,`objects`.`versionCount` AS `versionCount` from (`object_query_EF_FD` join `objects` on(`objects`.`id` = `object_query_EF_FD`.`oo_id`));

DROP VIEW IF EXISTS `object_EF_OSO`;
CREATE ALGORITHM=UNDEFINED  VIEW `object_EF_OSO` AS select `object_query_EF_OSO`.`oo_id` AS `oo_id`,`object_query_EF_OSO`.`oo_classId` AS `oo_classId`,`object_query_EF_OSO`.`oo_className` AS `oo_className`,`object_query_EF_OSO`.`ordernumber` AS `ordernumber`,`object_query_EF_OSO`.`orderState` AS `orderState`,`object_query_EF_OSO`.`orderdate` AS `orderdate`,`object_query_EF_OSO`.`items` AS `items`,`object_query_EF_OSO`.`comment` AS `comment`,`object_query_EF_OSO`.`customerOrderData` AS `customerOrderData`,`object_query_EF_OSO`.`voucherTokens` AS `voucherTokens`,`object_query_EF_OSO`.`giftItems` AS `giftItems`,`object_query_EF_OSO`.`subTotalNetPrice` AS `subTotalNetPrice`,`object_query_EF_OSO`.`subTotalPrice` AS `subTotalPrice`,`object_query_EF_OSO`.`totalNetPrice` AS `totalNetPrice`,`object_query_EF_OSO`.`totalPrice` AS `totalPrice`,`object_query_EF_OSO`.`taxInfo` AS `taxInfo`,`object_query_EF_OSO`.`currency` AS `currency`,`object_query_EF_OSO`.`cartId` AS `cartId`,`object_query_EF_OSO`.`customer__id` AS `customer__id`,`object_query_EF_OSO`.`customer__type` AS `customer__type`,`object_query_EF_OSO`.`customerFirstname` AS `customerFirstname`,`object_query_EF_OSO`.`customerLastname` AS `customerLastname`,`object_query_EF_OSO`.`customerCompany` AS `customerCompany`,`object_query_EF_OSO`.`customerStreet` AS `customerStreet`,`object_query_EF_OSO`.`customerZip` AS `customerZip`,`object_query_EF_OSO`.`customerCity` AS `customerCity`,`object_query_EF_OSO`.`customerCountry` AS `customerCountry`,`object_query_EF_OSO`.`customerEmail` AS `customerEmail`,`object_query_EF_OSO`.`deliveryFirstname` AS `deliveryFirstname`,`object_query_EF_OSO`.`deliveryLastname` AS `deliveryLastname`,`object_query_EF_OSO`.`deliveryCompany` AS `deliveryCompany`,`object_query_EF_OSO`.`deliveryStreet` AS `deliveryStreet`,`object_query_EF_OSO`.`deliveryZip` AS `deliveryZip`,`object_query_EF_OSO`.`deliveryCity` AS `deliveryCity`,`object_query_EF_OSO`.`deliveryCountry` AS `deliveryCountry`,`object_query_EF_OSO`.`paymentReference` AS `paymentReference`,`object_query_EF_OSO`.`successorOrder__id` AS `successorOrder__id`,`object_query_EF_OSO`.`successorOrder__type` AS `successorOrder__type`,`object_query_EF_OSO`.`cartHash` AS `cartHash`,`objects`.`id` AS `id`,`objects`.`parentId` AS `parentId`,`objects`.`type` AS `type`,`objects`.`key` AS `key`,`objects`.`path` AS `path`,`objects`.`index` AS `index`,`objects`.`published` AS `published`,`objects`.`creationDate` AS `creationDate`,`objects`.`modificationDate` AS `modificationDate`,`objects`.`userOwner` AS `userOwner`,`objects`.`userModification` AS `userModification`,`objects`.`classId` AS `classId`,`objects`.`className` AS `className`,`objects`.`childrenSortBy` AS `childrenSortBy`,`objects`.`childrenSortOrder` AS `childrenSortOrder`,`objects`.`versionCount` AS `versionCount` from (`object_query_EF_OSO` join `objects` on(`objects`.`id` = `object_query_EF_OSO`.`oo_id`));

DROP VIEW IF EXISTS `object_EF_OSOI`;
CREATE ALGORITHM=UNDEFINED  VIEW `object_EF_OSOI` AS select `object_query_EF_OSOI`.`oo_id` AS `oo_id`,`object_query_EF_OSOI`.`oo_classId` AS `oo_classId`,`object_query_EF_OSOI`.`oo_className` AS `oo_className`,`object_query_EF_OSOI`.`orderState` AS `orderState`,`object_query_EF_OSOI`.`product__id` AS `product__id`,`object_query_EF_OSOI`.`product__type` AS `product__type`,`object_query_EF_OSOI`.`productNumber` AS `productNumber`,`object_query_EF_OSOI`.`productName` AS `productName`,`object_query_EF_OSOI`.`amount` AS `amount`,`object_query_EF_OSOI`.`totalNetPrice` AS `totalNetPrice`,`object_query_EF_OSOI`.`totalPrice` AS `totalPrice`,`object_query_EF_OSOI`.`taxInfo` AS `taxInfo`,`object_query_EF_OSOI`.`comment` AS `comment`,`object_query_EF_OSOI`.`subItems` AS `subItems`,`objects`.`id` AS `id`,`objects`.`parentId` AS `parentId`,`objects`.`type` AS `type`,`objects`.`key` AS `key`,`objects`.`path` AS `path`,`objects`.`index` AS `index`,`objects`.`published` AS `published`,`objects`.`creationDate` AS `creationDate`,`objects`.`modificationDate` AS `modificationDate`,`objects`.`userOwner` AS `userOwner`,`objects`.`userModification` AS `userModification`,`objects`.`classId` AS `classId`,`objects`.`className` AS `className`,`objects`.`childrenSortBy` AS `childrenSortBy`,`objects`.`childrenSortOrder` AS `childrenSortOrder`,`objects`.`versionCount` AS `versionCount` from (`object_query_EF_OSOI` join `objects` on(`objects`.`id` = `object_query_EF_OSOI`.`oo_id`));

DROP VIEW IF EXISTS `object_EF_OSTC`;
CREATE ALGORITHM=UNDEFINED  VIEW `object_EF_OSTC` AS select `object_query_EF_OSTC`.`oo_id` AS `oo_id`,`object_query_EF_OSTC`.`oo_classId` AS `oo_classId`,`object_query_EF_OSTC`.`oo_className` AS `oo_className`,`object_query_EF_OSTC`.`taxEntryCombinationType` AS `taxEntryCombinationType`,`objects`.`id` AS `id`,`objects`.`parentId` AS `parentId`,`objects`.`type` AS `type`,`objects`.`key` AS `key`,`objects`.`path` AS `path`,`objects`.`index` AS `index`,`objects`.`published` AS `published`,`objects`.`creationDate` AS `creationDate`,`objects`.`modificationDate` AS `modificationDate`,`objects`.`userOwner` AS `userOwner`,`objects`.`userModification` AS `userModification`,`objects`.`classId` AS `classId`,`objects`.`className` AS `className`,`objects`.`childrenSortBy` AS `childrenSortBy`,`objects`.`childrenSortOrder` AS `childrenSortOrder`,`objects`.`versionCount` AS `versionCount` from (`object_query_EF_OSTC` join `objects` on(`objects`.`id` = `object_query_EF_OSTC`.`oo_id`));

DROP VIEW IF EXISTS `object_EF_OSVS`;
CREATE ALGORITHM=UNDEFINED  VIEW `object_EF_OSVS` AS select `object_query_EF_OSVS`.`oo_id` AS `oo_id`,`object_query_EF_OSVS`.`oo_classId` AS `oo_classId`,`object_query_EF_OSVS`.`oo_className` AS `oo_className`,`object_query_EF_OSVS`.`name` AS `name`,`objects`.`id` AS `id`,`objects`.`parentId` AS `parentId`,`objects`.`type` AS `type`,`objects`.`key` AS `key`,`objects`.`path` AS `path`,`objects`.`index` AS `index`,`objects`.`published` AS `published`,`objects`.`creationDate` AS `creationDate`,`objects`.`modificationDate` AS `modificationDate`,`objects`.`userOwner` AS `userOwner`,`objects`.`userModification` AS `userModification`,`objects`.`classId` AS `classId`,`objects`.`className` AS `className`,`objects`.`childrenSortBy` AS `childrenSortBy`,`objects`.`childrenSortOrder` AS `childrenSortOrder`,`objects`.`versionCount` AS `versionCount` from (`object_query_EF_OSVS` join `objects` on(`objects`.`id` = `object_query_EF_OSVS`.`oo_id`));

DROP VIEW IF EXISTS `object_EF_OSVT`;
CREATE ALGORITHM=UNDEFINED  VIEW `object_EF_OSVT` AS select `object_query_EF_OSVT`.`oo_id` AS `oo_id`,`object_query_EF_OSVT`.`oo_classId` AS `oo_classId`,`object_query_EF_OSVT`.`oo_className` AS `oo_className`,`object_query_EF_OSVT`.`tokenId` AS `tokenId`,`object_query_EF_OSVT`.`token` AS `token`,`object_query_EF_OSVT`.`voucherSeries__id` AS `voucherSeries__id`,`object_query_EF_OSVT`.`voucherSeries__type` AS `voucherSeries__type`,`objects`.`id` AS `id`,`objects`.`parentId` AS `parentId`,`objects`.`type` AS `type`,`objects`.`key` AS `key`,`objects`.`path` AS `path`,`objects`.`index` AS `index`,`objects`.`published` AS `published`,`objects`.`creationDate` AS `creationDate`,`objects`.`modificationDate` AS `modificationDate`,`objects`.`userOwner` AS `userOwner`,`objects`.`userModification` AS `userModification`,`objects`.`classId` AS `classId`,`objects`.`className` AS `className`,`objects`.`childrenSortBy` AS `childrenSortBy`,`objects`.`childrenSortOrder` AS `childrenSortOrder`,`objects`.`versionCount` AS `versionCount` from (`object_query_EF_OSVT` join `objects` on(`objects`.`id` = `object_query_EF_OSVT`.`oo_id`));

DROP VIEW IF EXISTS `object_EF_OTCP`;
CREATE ALGORITHM=UNDEFINED  VIEW `object_EF_OTCP` AS select `object_query_EF_OTCP`.`oo_id` AS `oo_id`,`object_query_EF_OTCP`.`oo_classId` AS `oo_classId`,`object_query_EF_OTCP`.`oo_className` AS `oo_className`,`object_query_EF_OTCP`.`OSproductNumber` AS `OSproductNumber`,`object_query_EF_OTCP`.`OSName` AS `OSName`,`object_query_EF_OTCP`.`productGroup` AS `productGroup`,`object_query_EF_OTCP`.`price` AS `price`,`objects`.`id` AS `id`,`objects`.`parentId` AS `parentId`,`objects`.`type` AS `type`,`objects`.`key` AS `key`,`objects`.`path` AS `path`,`objects`.`index` AS `index`,`objects`.`published` AS `published`,`objects`.`creationDate` AS `creationDate`,`objects`.`modificationDate` AS `modificationDate`,`objects`.`userOwner` AS `userOwner`,`objects`.`userModification` AS `userModification`,`objects`.`classId` AS `classId`,`objects`.`className` AS `className`,`objects`.`childrenSortBy` AS `childrenSortBy`,`objects`.`childrenSortOrder` AS `childrenSortOrder`,`objects`.`versionCount` AS `versionCount` from (`object_query_EF_OTCP` join `objects` on(`objects`.`id` = `object_query_EF_OTCP`.`oo_id`));

DROP VIEW IF EXISTS `object_EF_OTO`;
CREATE ALGORITHM=UNDEFINED  VIEW `object_EF_OTO` AS select `object_query_EF_OTO`.`oo_id` AS `oo_id`,`object_query_EF_OTO`.`oo_classId` AS `oo_classId`,`object_query_EF_OTO`.`oo_className` AS `oo_className`,`object_query_EF_OTO`.`offernumber` AS `offernumber`,`object_query_EF_OTO`.`dateCreated` AS `dateCreated`,`object_query_EF_OTO`.`dateValidUntil` AS `dateValidUntil`,`object_query_EF_OTO`.`totalPriceBeforeDiscount` AS `totalPriceBeforeDiscount`,`object_query_EF_OTO`.`totalPrice` AS `totalPrice`,`object_query_EF_OTO`.`discountType` AS `discountType`,`object_query_EF_OTO`.`discount` AS `discount`,`object_query_EF_OTO`.`cartId` AS `cartId`,`object_query_EF_OTO`.`items` AS `items`,`object_query_EF_OTO`.`customItems` AS `customItems`,`objects`.`id` AS `id`,`objects`.`parentId` AS `parentId`,`objects`.`type` AS `type`,`objects`.`key` AS `key`,`objects`.`path` AS `path`,`objects`.`index` AS `index`,`objects`.`published` AS `published`,`objects`.`creationDate` AS `creationDate`,`objects`.`modificationDate` AS `modificationDate`,`objects`.`userOwner` AS `userOwner`,`objects`.`userModification` AS `userModification`,`objects`.`classId` AS `classId`,`objects`.`className` AS `className`,`objects`.`childrenSortBy` AS `childrenSortBy`,`objects`.`childrenSortOrder` AS `childrenSortOrder`,`objects`.`versionCount` AS `versionCount` from (`object_query_EF_OTO` join `objects` on(`objects`.`id` = `object_query_EF_OTO`.`oo_id`));

DROP VIEW IF EXISTS `object_EF_OTOI`;
CREATE ALGORITHM=UNDEFINED  VIEW `object_EF_OTOI` AS select `object_query_EF_OTOI`.`oo_id` AS `oo_id`,`object_query_EF_OTOI`.`oo_classId` AS `oo_classId`,`object_query_EF_OTOI`.`oo_className` AS `oo_className`,`object_query_EF_OTOI`.`product__id` AS `product__id`,`object_query_EF_OTOI`.`product__type` AS `product__type`,`object_query_EF_OTOI`.`productNumber` AS `productNumber`,`object_query_EF_OTOI`.`productName` AS `productName`,`object_query_EF_OTOI`.`amount` AS `amount`,`object_query_EF_OTOI`.`originalTotalPrice` AS `originalTotalPrice`,`object_query_EF_OTOI`.`DiscountType` AS `DiscountType`,`object_query_EF_OTOI`.`discount` AS `discount`,`object_query_EF_OTOI`.`finalTotalPrice` AS `finalTotalPrice`,`object_query_EF_OTOI`.`subItems` AS `subItems`,`object_query_EF_OTOI`.`comment` AS `comment`,`object_query_EF_OTOI`.`cartItemKey` AS `cartItemKey`,`objects`.`id` AS `id`,`objects`.`parentId` AS `parentId`,`objects`.`type` AS `type`,`objects`.`key` AS `key`,`objects`.`path` AS `path`,`objects`.`index` AS `index`,`objects`.`published` AS `published`,`objects`.`creationDate` AS `creationDate`,`objects`.`modificationDate` AS `modificationDate`,`objects`.`userOwner` AS `userOwner`,`objects`.`userModification` AS `userModification`,`objects`.`classId` AS `classId`,`objects`.`className` AS `className`,`objects`.`childrenSortBy` AS `childrenSortBy`,`objects`.`childrenSortOrder` AS `childrenSortOrder`,`objects`.`versionCount` AS `versionCount` from (`object_query_EF_OTOI` join `objects` on(`objects`.`id` = `object_query_EF_OTOI`.`oo_id`));

DROP VIEW IF EXISTS `object_EV`;
CREATE ALGORITHM=UNDEFINED  VIEW `object_EV` AS select `object_query_EV`.`oo_id` AS `oo_id`,`object_query_EV`.`oo_classId` AS `oo_classId`,`object_query_EV`.`oo_className` AS `oo_className`,`object_query_EV`.`tags` AS `tags`,`object_query_EV`.`locationAddress` AS `locationAddress`,`object_query_EV`.`locationMap__longitude` AS `locationMap__longitude`,`object_query_EV`.`locationMap__latitude` AS `locationMap__latitude`,`object_query_EV`.`fromDate` AS `fromDate`,`object_query_EV`.`toDate` AS `toDate`,`object_query_EV`.`mainImage` AS `mainImage`,`object_query_EV`.`video` AS `video`,`object_query_EV`.`images__images` AS `images__images`,`object_query_EV`.`images__hotspots` AS `images__hotspots`,`object_query_EV`.`contactName` AS `contactName`,`object_query_EV`.`contactPhone` AS `contactPhone`,`object_query_EV`.`contactEmail` AS `contactEmail`,`object_query_EV`.`contactAddress` AS `contactAddress`,`object_query_EV`.`cars` AS `cars`,`object_query_EV`.`status` AS `status`,`objects`.`id` AS `id`,`objects`.`parentId` AS `parentId`,`objects`.`type` AS `type`,`objects`.`key` AS `key`,`objects`.`path` AS `path`,`objects`.`index` AS `index`,`objects`.`published` AS `published`,`objects`.`creationDate` AS `creationDate`,`objects`.`modificationDate` AS `modificationDate`,`objects`.`userOwner` AS `userOwner`,`objects`.`userModification` AS `userModification`,`objects`.`classId` AS `classId`,`objects`.`className` AS `className`,`objects`.`childrenSortBy` AS `childrenSortBy`,`objects`.`childrenSortOrder` AS `childrenSortOrder`,`objects`.`versionCount` AS `versionCount` from (`object_query_EV` join `objects` on(`objects`.`id` = `object_query_EV`.`oo_id`));

DROP VIEW IF EXISTS `object_NE`;
CREATE ALGORITHM=UNDEFINED  VIEW `object_NE` AS select `object_query_NE`.`oo_id` AS `oo_id`,`object_query_NE`.`oo_classId` AS `oo_classId`,`object_query_NE`.`oo_className` AS `oo_className`,`object_query_NE`.`date` AS `date`,`object_query_NE`.`gallery__images` AS `gallery__images`,`object_query_NE`.`gallery__hotspots` AS `gallery__hotspots`,`objects`.`id` AS `id`,`objects`.`parentId` AS `parentId`,`objects`.`type` AS `type`,`objects`.`key` AS `key`,`objects`.`path` AS `path`,`objects`.`index` AS `index`,`objects`.`published` AS `published`,`objects`.`creationDate` AS `creationDate`,`objects`.`modificationDate` AS `modificationDate`,`objects`.`userOwner` AS `userOwner`,`objects`.`userModification` AS `userModification`,`objects`.`classId` AS `classId`,`objects`.`className` AS `className`,`objects`.`childrenSortBy` AS `childrenSortBy`,`objects`.`childrenSortOrder` AS `childrenSortOrder`,`objects`.`versionCount` AS `versionCount` from (`object_query_NE` join `objects` on(`objects`.`id` = `object_query_NE`.`oo_id`));

DROP VIEW IF EXISTS `object_localized_EV_de`;
CREATE ALGORITHM=UNDEFINED  VIEW `object_localized_EV_de` AS select `object_query_EV`.`oo_id` AS `oo_id`,`object_query_EV`.`oo_classId` AS `oo_classId`,`object_query_EV`.`oo_className` AS `oo_className`,`object_query_EV`.`tags` AS `tags`,`object_query_EV`.`locationAddress` AS `locationAddress`,`object_query_EV`.`locationMap__longitude` AS `locationMap__longitude`,`object_query_EV`.`locationMap__latitude` AS `locationMap__latitude`,`object_query_EV`.`fromDate` AS `fromDate`,`object_query_EV`.`toDate` AS `toDate`,`object_query_EV`.`mainImage` AS `mainImage`,`object_query_EV`.`video` AS `video`,`object_query_EV`.`images__images` AS `images__images`,`object_query_EV`.`images__hotspots` AS `images__hotspots`,`object_query_EV`.`contactName` AS `contactName`,`object_query_EV`.`contactPhone` AS `contactPhone`,`object_query_EV`.`contactEmail` AS `contactEmail`,`object_query_EV`.`contactAddress` AS `contactAddress`,`object_query_EV`.`cars` AS `cars`,`object_query_EV`.`status` AS `status`,`objects`.`id` AS `id`,`objects`.`parentId` AS `parentId`,`objects`.`type` AS `type`,`objects`.`key` AS `key`,`objects`.`path` AS `path`,`objects`.`index` AS `index`,`objects`.`published` AS `published`,`objects`.`creationDate` AS `creationDate`,`objects`.`modificationDate` AS `modificationDate`,`objects`.`userOwner` AS `userOwner`,`objects`.`userModification` AS `userModification`,`objects`.`classId` AS `classId`,`objects`.`className` AS `className`,`objects`.`childrenSortBy` AS `childrenSortBy`,`objects`.`childrenSortOrder` AS `childrenSortOrder`,`objects`.`versionCount` AS `versionCount`,`de`.`ooo_id` AS `ooo_id`,`de`.`language` AS `language`,`de`.`title` AS `title`,`de`.`description` AS `description` from ((`object_query_EV` join `objects` on(`objects`.`id` = `object_query_EV`.`oo_id`)) left join `object_localized_query_EV_de` `de` on(1 and `object_query_EV`.`oo_id` = `de`.`ooo_id`));

DROP VIEW IF EXISTS `object_localized_EV_en`;
CREATE ALGORITHM=UNDEFINED  VIEW `object_localized_EV_en` AS select `object_query_EV`.`oo_id` AS `oo_id`,`object_query_EV`.`oo_classId` AS `oo_classId`,`object_query_EV`.`oo_className` AS `oo_className`,`object_query_EV`.`tags` AS `tags`,`object_query_EV`.`locationAddress` AS `locationAddress`,`object_query_EV`.`locationMap__longitude` AS `locationMap__longitude`,`object_query_EV`.`locationMap__latitude` AS `locationMap__latitude`,`object_query_EV`.`fromDate` AS `fromDate`,`object_query_EV`.`toDate` AS `toDate`,`object_query_EV`.`mainImage` AS `mainImage`,`object_query_EV`.`video` AS `video`,`object_query_EV`.`images__images` AS `images__images`,`object_query_EV`.`images__hotspots` AS `images__hotspots`,`object_query_EV`.`contactName` AS `contactName`,`object_query_EV`.`contactPhone` AS `contactPhone`,`object_query_EV`.`contactEmail` AS `contactEmail`,`object_query_EV`.`contactAddress` AS `contactAddress`,`object_query_EV`.`cars` AS `cars`,`object_query_EV`.`status` AS `status`,`objects`.`id` AS `id`,`objects`.`parentId` AS `parentId`,`objects`.`type` AS `type`,`objects`.`key` AS `key`,`objects`.`path` AS `path`,`objects`.`index` AS `index`,`objects`.`published` AS `published`,`objects`.`creationDate` AS `creationDate`,`objects`.`modificationDate` AS `modificationDate`,`objects`.`userOwner` AS `userOwner`,`objects`.`userModification` AS `userModification`,`objects`.`classId` AS `classId`,`objects`.`className` AS `className`,`objects`.`childrenSortBy` AS `childrenSortBy`,`objects`.`childrenSortOrder` AS `childrenSortOrder`,`objects`.`versionCount` AS `versionCount`,`en`.`ooo_id` AS `ooo_id`,`en`.`language` AS `language`,`en`.`title` AS `title`,`en`.`description` AS `description` from ((`object_query_EV` join `objects` on(`objects`.`id` = `object_query_EV`.`oo_id`)) left join `object_localized_query_EV_en` `en` on(1 and `object_query_EV`.`oo_id` = `en`.`ooo_id`));

DROP VIEW IF EXISTS `object_localized_EV_fr`;
CREATE ALGORITHM=UNDEFINED  VIEW `object_localized_EV_fr` AS select `object_query_EV`.`oo_id` AS `oo_id`,`object_query_EV`.`oo_classId` AS `oo_classId`,`object_query_EV`.`oo_className` AS `oo_className`,`object_query_EV`.`tags` AS `tags`,`object_query_EV`.`locationAddress` AS `locationAddress`,`object_query_EV`.`locationMap__longitude` AS `locationMap__longitude`,`object_query_EV`.`locationMap__latitude` AS `locationMap__latitude`,`object_query_EV`.`fromDate` AS `fromDate`,`object_query_EV`.`toDate` AS `toDate`,`object_query_EV`.`mainImage` AS `mainImage`,`object_query_EV`.`video` AS `video`,`object_query_EV`.`images__images` AS `images__images`,`object_query_EV`.`images__hotspots` AS `images__hotspots`,`object_query_EV`.`contactName` AS `contactName`,`object_query_EV`.`contactPhone` AS `contactPhone`,`object_query_EV`.`contactEmail` AS `contactEmail`,`object_query_EV`.`contactAddress` AS `contactAddress`,`object_query_EV`.`cars` AS `cars`,`object_query_EV`.`status` AS `status`,`objects`.`id` AS `id`,`objects`.`parentId` AS `parentId`,`objects`.`type` AS `type`,`objects`.`key` AS `key`,`objects`.`path` AS `path`,`objects`.`index` AS `index`,`objects`.`published` AS `published`,`objects`.`creationDate` AS `creationDate`,`objects`.`modificationDate` AS `modificationDate`,`objects`.`userOwner` AS `userOwner`,`objects`.`userModification` AS `userModification`,`objects`.`classId` AS `classId`,`objects`.`className` AS `className`,`objects`.`childrenSortBy` AS `childrenSortBy`,`objects`.`childrenSortOrder` AS `childrenSortOrder`,`objects`.`versionCount` AS `versionCount`,`fr`.`ooo_id` AS `ooo_id`,`fr`.`language` AS `language`,`fr`.`title` AS `title`,`fr`.`description` AS `description` from ((`object_query_EV` join `objects` on(`objects`.`id` = `object_query_EV`.`oo_id`)) left join `object_localized_query_EV_fr` `fr` on(1 and `object_query_EV`.`oo_id` = `fr`.`ooo_id`));

DROP VIEW IF EXISTS `object_localized_NE_de`;
CREATE ALGORITHM=UNDEFINED  VIEW `object_localized_NE_de` AS select `object_query_NE`.`oo_id` AS `oo_id`,`object_query_NE`.`oo_classId` AS `oo_classId`,`object_query_NE`.`oo_className` AS `oo_className`,`object_query_NE`.`date` AS `date`,`object_query_NE`.`gallery__images` AS `gallery__images`,`object_query_NE`.`gallery__hotspots` AS `gallery__hotspots`,`objects`.`id` AS `id`,`objects`.`parentId` AS `parentId`,`objects`.`type` AS `type`,`objects`.`key` AS `key`,`objects`.`path` AS `path`,`objects`.`index` AS `index`,`objects`.`published` AS `published`,`objects`.`creationDate` AS `creationDate`,`objects`.`modificationDate` AS `modificationDate`,`objects`.`userOwner` AS `userOwner`,`objects`.`userModification` AS `userModification`,`objects`.`classId` AS `classId`,`objects`.`className` AS `className`,`objects`.`childrenSortBy` AS `childrenSortBy`,`objects`.`childrenSortOrder` AS `childrenSortOrder`,`objects`.`versionCount` AS `versionCount`,`de`.`ooo_id` AS `ooo_id`,`de`.`language` AS `language`,`de`.`title` AS `title`,`de`.`shortText` AS `shortText` from ((`object_query_NE` join `objects` on(`objects`.`id` = `object_query_NE`.`oo_id`)) left join `object_localized_query_NE_de` `de` on(1 and `object_query_NE`.`oo_id` = `de`.`ooo_id`));

DROP VIEW IF EXISTS `object_localized_NE_en`;
CREATE ALGORITHM=UNDEFINED  VIEW `object_localized_NE_en` AS select `object_query_NE`.`oo_id` AS `oo_id`,`object_query_NE`.`oo_classId` AS `oo_classId`,`object_query_NE`.`oo_className` AS `oo_className`,`object_query_NE`.`date` AS `date`,`object_query_NE`.`gallery__images` AS `gallery__images`,`object_query_NE`.`gallery__hotspots` AS `gallery__hotspots`,`objects`.`id` AS `id`,`objects`.`parentId` AS `parentId`,`objects`.`type` AS `type`,`objects`.`key` AS `key`,`objects`.`path` AS `path`,`objects`.`index` AS `index`,`objects`.`published` AS `published`,`objects`.`creationDate` AS `creationDate`,`objects`.`modificationDate` AS `modificationDate`,`objects`.`userOwner` AS `userOwner`,`objects`.`userModification` AS `userModification`,`objects`.`classId` AS `classId`,`objects`.`className` AS `className`,`objects`.`childrenSortBy` AS `childrenSortBy`,`objects`.`childrenSortOrder` AS `childrenSortOrder`,`objects`.`versionCount` AS `versionCount`,`en`.`ooo_id` AS `ooo_id`,`en`.`language` AS `language`,`en`.`title` AS `title`,`en`.`shortText` AS `shortText` from ((`object_query_NE` join `objects` on(`objects`.`id` = `object_query_NE`.`oo_id`)) left join `object_localized_query_NE_en` `en` on(1 and `object_query_NE`.`oo_id` = `en`.`ooo_id`));

DROP VIEW IF EXISTS `object_localized_NE_fr`;
CREATE ALGORITHM=UNDEFINED  VIEW `object_localized_NE_fr` AS select `object_query_NE`.`oo_id` AS `oo_id`,`object_query_NE`.`oo_classId` AS `oo_classId`,`object_query_NE`.`oo_className` AS `oo_className`,`object_query_NE`.`date` AS `date`,`object_query_NE`.`gallery__images` AS `gallery__images`,`object_query_NE`.`gallery__hotspots` AS `gallery__hotspots`,`objects`.`id` AS `id`,`objects`.`parentId` AS `parentId`,`objects`.`type` AS `type`,`objects`.`key` AS `key`,`objects`.`path` AS `path`,`objects`.`index` AS `index`,`objects`.`published` AS `published`,`objects`.`creationDate` AS `creationDate`,`objects`.`modificationDate` AS `modificationDate`,`objects`.`userOwner` AS `userOwner`,`objects`.`userModification` AS `userModification`,`objects`.`classId` AS `classId`,`objects`.`className` AS `className`,`objects`.`childrenSortBy` AS `childrenSortBy`,`objects`.`childrenSortOrder` AS `childrenSortOrder`,`objects`.`versionCount` AS `versionCount`,`fr`.`ooo_id` AS `ooo_id`,`fr`.`language` AS `language`,`fr`.`title` AS `title`,`fr`.`shortText` AS `shortText` from ((`object_query_NE` join `objects` on(`objects`.`id` = `object_query_NE`.`oo_id`)) left join `object_localized_query_NE_fr` `fr` on(1 and `object_query_NE`.`oo_id` = `fr`.`ooo_id`));

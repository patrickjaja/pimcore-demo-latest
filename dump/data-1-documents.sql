
SET NAMES utf8mb4;

INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (1,0,'page','','/',999999,1,1557393622,1739310817,1,0,245);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (3,1,'link','en','/',0,1,1562571033,1566463801,2,2,16);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (10,3,'folder','shared','/en/',5,1,1563206024,1566291334,2,2,4);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (11,10,'folder','includes','/en/shared/',0,1,1563206031,1563206031,2,2,2);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (12,11,'page','footer','/en/shared/includes/',1,1,1563206054,1739311091,2,0,38);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (30,10,'folder','teasers','/en/shared/',1,1,1564046787,1564046806,2,2,3);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (33,30,'snippet','Popular Brands','/en/shared/teasers/',1,1,1564046929,1739310774,2,0,12);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (35,30,'snippet','Magazine','/en/shared/teasers/',2,1,1564047185,1739310774,2,0,7);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (36,10,'snippet','sidebar','/en/shared/',2,1,1564062489,1739310774,2,0,17);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (47,3,'page','Getting Started','/en/',4,1,1565339618,1739311092,2,0,29);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (59,3,'folder','mails','/en/',6,1,1565787036,1565792106,2,2,3);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (61,59,'email','confirmation-mail','/en/mails/',1,1,1565787060,1739310777,2,0,10);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (66,1,'folder','print','/',2,1,1566202701,1566202701,2,2,2);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (75,66,'printcontainer','Demo-Catalog','/print/',4,1,1566311557,1739310777,2,0,13);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (76,75,'printpage','title','/print/Demo-Catalog/',1,1,1566311570,1566331529,2,0,11);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (78,75,'printcontainer','Muscle Cars','/print/Demo-Catalog/',2,1,1566312255,1739310777,2,0,7);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (79,78,'printpage','highlights','/print/Demo-Catalog/Muscle Cars/',1,1,1566312291,1739310773,2,0,21);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (80,75,'printcontainer','British Sports Cars','/print/Demo-Catalog/',3,1,1566313856,1739310777,2,0,9);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (81,80,'printpage','highlights','/print/Demo-Catalog/British Sports Cars/',1,1,1566313881,1739310777,2,0,12);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (82,80,'printpage','products','/print/Demo-Catalog/British Sports Cars/',2,1,1566314082,1739310773,2,0,14);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (83,75,'printcontainer','German Cars','/print/Demo-Catalog/',4,1,1566328421,1739310777,2,0,9);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (84,83,'printpage','highlights','/print/Demo-Catalog/German Cars/',1,1,1566328458,1739310773,2,0,25);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (86,83,'printpage','accessories','/print/Demo-Catalog/German Cars/',3,1,1566330635,1739314248,2,0,9);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (88,47,'page','Start-Your-PimCore-AI-Project','/en/Getting Started/',3,1,1566463284,1739310781,2,0,12);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (93,59,'email','password-recovery','/en/mails/',2,1,1566573288,1739310781,2,0,13);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (105,59,'email','newsletter_confirm','/en/mails/',4,1,1566813270,1739310772,2,0,6);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (106,30,'snippet','News','/en/shared/teasers/',3,1,1566813644,1739310772,2,0,5);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (107,30,'snippet','Car Gallery','/en/shared/teasers/',4,1,1566819409,1739310772,2,0,9);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (108,3,'folder','newsletter','/en/',7,1,1566819673,1566819673,2,2,2);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (111,59,'email','after-order-mail','/en/mails/',5,1,1566832234,1739310772,2,0,4);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (119,108,'newsletter','Sample Newsletter','/en/newsletter/',2,1,1566900622,1739310772,2,0,6);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (136,1,'page','de','/',1,1,1566982699,1739310813,2,0,25);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (137,136,'folder','shared','/de/',4,1,1566982699,1579775196,2,0,2);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (140,136,'page','Start','/de/',3,1,1566982700,1739311092,2,0,13);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (141,136,'folder','mails','/de/',5,1,1566982700,1579775197,2,0,2);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (144,141,'email','confirmation-mail','/de/mails/',1,1,1566982701,1739310793,2,0,5);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (145,141,'email','password-recovery','/de/mails/',2,1,1566982702,1739310793,2,0,5);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (146,141,'email','newsletter_confirm','/de/mails/',4,1,1566982702,1739310793,2,0,5);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (147,141,'email','after-order-mail','/de/mails/',5,1,1566982702,1739310793,2,0,4);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (148,137,'folder','includes','/de/shared/',0,1,1566982702,1579775197,2,0,2);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (149,137,'folder','teasers','/de/shared/',1,1,1566982703,1579775197,2,0,2);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (150,137,'snippet','sidebar','/de/shared/',2,1,1566982703,1739310793,2,0,7);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (160,140,'link','Terms-and-Conditions','/de/Start/',3,1,1566982706,1579775197,2,2,5);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (166,149,'snippet','Beliebte Marken','/de/shared/teasers/',1,1,1566982708,1739310793,2,0,6);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (167,149,'snippet','Magazin','/de/shared/teasers/',2,1,1566982708,1739310793,2,0,6);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (168,149,'snippet','News','/de/shared/teasers/',3,1,1566982708,1739310793,2,0,4);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (169,149,'snippet','Auto Galerie','/de/shared/teasers/',4,1,1566982709,1739310794,2,0,6);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (170,148,'page','footer','/de/shared/includes/',1,1,1566982709,1739311091,2,0,17);
INSERT INTO documents (`id`,`parentId`,`type`,`key`,`path`,`index`,`published`,`creationDate`,`modificationDate`,`userOwner`,`userModification`,`versionCount`) VALUES (198,3,'page','Error-Page','/en/',8,1,1567079631,1739310773,2,0,7);

<?php

/**
 * Pimcore
 *
 * This source file is available under two different licenses:
 * - GNU General Public License version 3 (GPLv3)
 * - Pimcore Enterprise License (PEL)
 * Full copyright and license information is available in
 * LICENSE.md which is distributed with this source code.
 *
 *  @copyright  Copyright (c) Pimcore GmbH (http://www.pimcore.org)
 *  @license    http://www.pimcore.org/license     GPLv3 and PEL
 */

namespace App\Website\LinkGenerator;

use App\Model\Product\AccessoryPart;
use App\Model\Product\Car;
use App\Website\Tool\Text;
use Pimcore\Bundle\EcommerceFrameworkBundle\Model\ProductInterface;
use Pimcore\Model\DataObject;
use Pimcore\Model\Document;

class ProductLinkGenerator extends AbstractProductLinkGenerator
{
    public function generate(object $object, array $params = []): string
    {
        // ToDo: 1 - remove car hardcoded logic
//        if (!($object instanceof Car || $object instanceof AccessoryPart)) {
//            throw new \InvalidArgumentException('Given object is no Car');
//        }

        if (isset($params['document']) && $params['document'] instanceof Document) {
            $this->document = $params['document'];
        }

        return $this->doGenerate($object, $params);
    }

    public function generateWithMockup(ProductInterface $object, array $params = []): string
    {
        return $this->doGenerate($object, $params);
    }

    protected function doGenerate(ProductInterface $object, array $params): string
    {
        return DataObject\Service::useInheritedValues(true, function () use ($object, $params) {
            // ToDo: 2, even when i have removed the property from databrick - its still present. Since its hardcoded, the getter need to be present -> remove or check if getter exists
            //            if (!empty($object->getUrlSlug())) {
//                return current($object->getUrlSlug())->getSlug();
//            }

            $locale = $params['locale'] ?? null;

            // ToDo: 3 - no idea where getOSName is comming from
            // ToDo: 4 - removed $object->getMainNavigation since its hardcoded comming from assessory class by inheritance
//            $mainCategory = $object->getCategories()[0];

            return $this->pimcoreUrl->__invoke(
                [
//                    'productname' => Text::toUrl($object->getOSName() ?? 'product'),
                    'productname' => Text::toUrl($object->getName() ?? 'product'),
                    'product' => $object->getId(),
                    'path' => $this->getNavigationPath(null, $params['rootCategory'] ?? null, $locale),
                    'page' => null,
                    '_locale' => $locale,
                ],
                'shop-detail',
                true
            );
        });
    }
}

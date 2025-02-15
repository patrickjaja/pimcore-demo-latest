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

namespace App\Command;

use Pimcore\Console\AbstractCommand;
use Pimcore\Model\DataObject\Data\QuantityValue;
use Pimcore\Model\DataObject\Objectbrick\Data\SaleInformation;
use Pimcore\Model\DataObject\QuantityValue\Unit;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Console\Input\InputArgument;

//ToDo: Make it behave dynamically based on passed object getter (map properties to object)
//Why? Because the object types/classes are different, and one command can be easily used to import any kind of dataset
class DataCommand extends AbstractCommand
{
    protected array $priceRange = [
        'from' => 57,
        'to' => 900
     ];

    protected array $availabilityTypes = [
        'couple-weeks',
        'couple-days',
        'instant'
    ];

    protected array $conditionTypes = [
        'broken',
        'reworked',
        'used',
        'new' //not for cars
    ];

    public function configure(): void
    {
        $this
            ->setName('app:data-command')
            ->addArgument(
                'file',
                InputArgument::REQUIRED,
                'Path to the JSON file containing import data'
            );
    }

    public function execute(InputInterface $input, OutputInterface $output): int
    {
        $filePath = $input->getArgument('file');

        if (!file_exists($filePath)) {
            $output->writeln(sprintf('<error>File not found: %s</error>', $filePath));
            return 1;
        }

        $jsonContent = file_get_contents($filePath);
        $data = json_decode($jsonContent, true);

        if (json_last_error() !== JSON_ERROR_NONE) {
            $output->writeln('<error>Invalid JSON file</error>');
            return 1;
        }

        // Get target class from JSON
        $targetClass = $data['targetObjectClass'] ?? 'Pimcore\Model\DataObject\ExampleProductType';

        try {
            // Create new object instance
            $object = new $targetClass();
            $object->setKey($data['key']);
            $object->setParentId($data['parentFolderId']);
            $object->setPublished($data['isPublished'] ?? true);

            // Handle localized fields
            if (isset($data['localizedfields'])) {
                $localizedFields = $object->getLocalizedfields();
                $localizedFields->setItems($data['localizedfields']);
            }

            // Handle sale information
            if (isset($data['saleInformation']) && method_exists($object, 'getSaleInformation')) {
                $this->setSaleInformation($object, $data['saleInformation']);
            }

            $object->save();
            $output->writeln(sprintf('Successfully created object with ID: %s', $object->getId()));

        } catch (\Exception $e) {
            $output->writeln(sprintf('<error>Error creating object: %s</error>', $e->getMessage()));
            return 1;
        }

        $output->writeln('Import completed successfully');
        return 0;
    }

    protected function setSaleInformation($object, array $saleInfo): void
    {
        $saleInformation = $object->getSaleInformation()->getSaleInformation();
        if (empty($saleInformation)) {
            $saleInformation = new SaleInformation($object);
            $object->getSaleInformation()->setSaleInformation($saleInformation);
        }

        if (isset($saleInfo['priceInEUR'])) {
            $saleInformation->setPriceInEUR($saleInfo['priceInEUR']);
        }
        if (isset($saleInfo['productNumber'])) {
            $saleInformation->setProductNumber($saleInfo['productNumber']);
        }

        // Set default values for required fields if not provided
        if (!isset($saleInfo['availabilityPieces'])) {
            $saleInformation->setAvailabilityPieces(rand(1, 5));
        }
        if (!isset($saleInfo['availabilityType'])) {
            $saleInformation->setAvailabilityType($this->availabilityTypes[rand(0, 2)]);
        }
    }

    protected function updateAccessoryKey(AccessoryPart $object): void
    {
        $key = '';

        $key .= $object->getManufacturer()->getName() . '-';
        $key .= $object->getSeries()->getName() . '-';
        $key .= $object->getMainCategory()->getName();
        if ($object->getNameAddition()) {
            $key .= '-' . $object->getNameAddition();
        }
        $key = strtolower($key);
        $object->setKey($key);
    }

    protected function updateAccessorySalesInformation(AccessoryPart $object): void
    {
        $saleInformation = $object->getSaleInformation()->getSaleInformation();

        if (empty($saleInformation)) {
            $saleInformation = new SaleInformation($object);
            $object->getSaleInformation()->setSaleInformation($saleInformation);
        }
        $saleInformation->setAvailabilityPieces(rand(1, 20));
        $saleInformation->setAvailabilityType($this->availabilityTypes[rand(0, 2)]);
        $saleInformation->setCondition($this->conditionTypes[rand(0, 3)]);
        $saleInformation->setPriceInEUR($this->generatePrice(30, 2000));
        $saleInformation->setMilage(new QuantityValue(rand(30000, 300000), Unit::getByAbbreviation('km')));
    }

    protected function updateAccessoryERPInformation(AccessoryPart $part): void
    {
        if (empty($part->getErpNumber())) {
            $part->setErpNumber(crc32($part->getId()));
        }
        $part->setCategoryCode($part->getMainCategory()->getId());

        $owners = [
            'RO',
            'TU',
            'RA',
            'XE',
            'PI'
        ];
        $part->setOwner($owners[rand(0, count($owners) - 1)]);
    }

    protected function generatePrice(int $min, int $max): float
    {
        $price = rand($min, $max);

        $price = intval($price / 100);
        $price = $price * 100 + 95.95;

        return $price;
    }

    protected function generateCarPrice(string $condition): float
    {
        $priceRangeArray = [
            'broken' => [1500, 7500],
            'reworked' => [8000, 90000],
            'used' => [6000, 30000],
        ];

        return $this->generatePrice($priceRangeArray[$condition][0], $priceRangeArray[$condition][1]);
    }
}

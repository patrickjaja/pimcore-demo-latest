<?php

/**
 * Fields Summary:
 * - availabilityPieces [numeric]
 * - availabilityType [select]
 * - priceInEUR [numeric]
 * - productNumber [input]
 */

namespace Pimcore\Model\DataObject\Objectbrick\Data;

use Pimcore\Model\DataObject;
use Pimcore\Model\DataObject\Exception\InheritanceParentNotFoundException;
use Pimcore\Model\DataObject\PreGetValueHookInterface;


class SaleInformation extends DataObject\Objectbrick\Data\AbstractData
{
public const FIELD_AVAILABILITY_PIECES = 'availabilityPieces';
public const FIELD_AVAILABILITY_TYPE = 'availabilityType';
public const FIELD_PRICE_IN_EUR = 'priceInEUR';
public const FIELD_PRODUCT_NUMBER = 'productNumber';

protected string $type = "SaleInformation";
protected $availabilityPieces;
protected $availabilityType;
protected $priceInEUR;
protected $productNumber;


/**
* SaleInformation constructor.
* @param DataObject\Concrete $object
*/
public function __construct(DataObject\Concrete $object)
{
	parent::__construct($object);
	$this->markFieldDirty("_self");
}


/**
* Get availabilityPieces - Availability Pieces
* @return float|null
*/
public function getAvailabilityPieces(): ?float
{
	$data = $this->availabilityPieces;
	if(\Pimcore\Model\DataObject::doGetInheritedValues($this->getObject()) && $this->getDefinition()->getFieldDefinition("availabilityPieces")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("availabilityPieces");
		} catch (InheritanceParentNotFoundException $e) {
			// no data from parent available, continue ...
		}
	}
	if ($data instanceof \Pimcore\Model\DataObject\Data\EncryptedField) {
		return $data->getPlain();
	}

	return $data;
}

/**
* Set availabilityPieces - Availability Pieces
* @param float|null $availabilityPieces
* @return $this
*/
public function setAvailabilityPieces (?float $availabilityPieces): static
{
	/** @var \Pimcore\Model\DataObject\ClassDefinition\Data\Numeric $fd */
	$fd = $this->getDefinition()->getFieldDefinition("availabilityPieces");
	$this->availabilityPieces = $fd->preSetData($this, $availabilityPieces);
	return $this;
}

/**
* Get availabilityType - Availability Type
* @return string|null
*/
public function getAvailabilityType(): ?string
{
	$data = $this->availabilityType;
	if(\Pimcore\Model\DataObject::doGetInheritedValues($this->getObject()) && $this->getDefinition()->getFieldDefinition("availabilityType")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("availabilityType");
		} catch (InheritanceParentNotFoundException $e) {
			// no data from parent available, continue ...
		}
	}
	if ($data instanceof \Pimcore\Model\DataObject\Data\EncryptedField) {
		return $data->getPlain();
	}

	return $data;
}

/**
* Set availabilityType - Availability Type
* @param string|null $availabilityType
* @return $this
*/
public function setAvailabilityType (?string $availabilityType): static
{
	$this->availabilityType = $availabilityType;

	return $this;
}

/**
* Get priceInEUR - Price in EUR
* @return string|null
*/
public function getPriceInEUR(): ?string
{
	$data = $this->priceInEUR;
	if(\Pimcore\Model\DataObject::doGetInheritedValues($this->getObject()) && $this->getDefinition()->getFieldDefinition("priceInEUR")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("priceInEUR");
		} catch (InheritanceParentNotFoundException $e) {
			// no data from parent available, continue ...
		}
	}
	if ($data instanceof \Pimcore\Model\DataObject\Data\EncryptedField) {
		return $data->getPlain();
	}

	return $data;
}

/**
* Set priceInEUR - Price in EUR
* @param string|null $priceInEUR
* @return $this
*/
public function setPriceInEUR (?string $priceInEUR): static
{
	/** @var \Pimcore\Model\DataObject\ClassDefinition\Data\Numeric $fd */
	$fd = $this->getDefinition()->getFieldDefinition("priceInEUR");
	$this->priceInEUR = $fd->preSetData($this, $priceInEUR);
	return $this;
}

/**
* Get productNumber - Product Number
* @return string|null
*/
public function getProductNumber(): ?string
{
	$data = $this->productNumber;
	if(\Pimcore\Model\DataObject::doGetInheritedValues($this->getObject()) && $this->getDefinition()->getFieldDefinition("productNumber")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("productNumber");
		} catch (InheritanceParentNotFoundException $e) {
			// no data from parent available, continue ...
		}
	}
	if ($data instanceof \Pimcore\Model\DataObject\Data\EncryptedField) {
		return $data->getPlain();
	}

	return $data;
}

/**
* Set productNumber - Product Number
* @param string|null $productNumber
* @return $this
*/
public function setProductNumber (?string $productNumber): static
{
	$this->productNumber = $productNumber;

	return $this;
}

}


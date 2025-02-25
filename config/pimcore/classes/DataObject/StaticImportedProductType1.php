<?php

/**
 * Inheritance: yes
 * Variants: no
 *
 * Fields Summary:
 * - Title [input]
 * - Manufacturer [input]
 * - Description [input]
 * - Intro [input]
 * - PriceUnit [input]
 * - ProducerStory [input]
 * - PropertiesHeight [input]
 * - PropertiesProducer [input]
 * - PropertiesProcess [select]
 * - PropertiesOrigin [input]
 * - PropertiesVariety [input]
 * - TasteProfile [multiselect]
 * - PriceUnitReference [input]
 * - PriceIncludesTax [input]
 * - DeliveryTime [input]
 * - Altitude [input]
 * - Producers [input]
 * - Process [input]
 * - Origin [input]
 * - Variety [input]
 * - TasteNotes [multiselect]
 * - DetailedDescription [input]
 * - ProducerInformation [input]
 * - IntroDescription [input]
 * - BasePrice [input]
 * - TaxInfo [input]
 * - ProductProperties [input]
 * - Taste [multiselect]
 * - ProductDetailDescription [input]
 * - AdditionalDescription [input]
 * - ProducerDetails [input]
 * - ProducerInfo [input]
 * - PriceInfo [input]
 * - DescriptionIntro [input]
 * - DeliveryInfo [input]
 * - Attributes [input]
 * - TheStoryBehind [input]
 * - LongDescription [input]
 * - MeetTheProducer [input]
 * - Varietal [input]
 */

namespace Pimcore\Model\DataObject;

use Pimcore\Model\DataObject\Exception\InheritanceParentNotFoundException;
use Pimcore\Model\DataObject\PreGetValueHookInterface;

/**
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing getList(array $config = [])
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByTitle(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByManufacturer(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByDescription(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByIntro(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByPriceUnit(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByProducerStory(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByPropertiesHeight(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByPropertiesProducer(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByPropertiesProcess(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByPropertiesOrigin(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByPropertiesVariety(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByTasteProfile(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByPriceUnitReference(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByPriceIncludesTax(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByDeliveryTime(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByAltitude(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByProducers(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByProcess(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByOrigin(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByVariety(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByTasteNotes(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByDetailedDescription(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByProducerInformation(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByIntroDescription(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByBasePrice(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByTaxInfo(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByProductProperties(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByTaste(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByProductDetailDescription(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByAdditionalDescription(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByProducerDetails(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByProducerInfo(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByPriceInfo(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByDescriptionIntro(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByDeliveryInfo(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByAttributes(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByTheStoryBehind(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByLongDescription(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByMeetTheProducer(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
* @method static \Pimcore\Model\DataObject\StaticImportedProductType1\Listing|\Pimcore\Model\DataObject\StaticImportedProductType1|null getByVarietal(mixed $value, ?int $limit = null, int $offset = 0, ?array $objectTypes = null)
*/

class StaticImportedProductType1 extends \App\Model\Product\AbstractProduct
{
public const FIELD_TITLE = 'Title';
public const FIELD_MANUFACTURER = 'Manufacturer';
public const FIELD_DESCRIPTION = 'Description';
public const FIELD_INTRO = 'Intro';
public const FIELD_PRICE_UNIT = 'PriceUnit';
public const FIELD_PRODUCER_STORY = 'ProducerStory';
public const FIELD_PROPERTIES_HEIGHT = 'PropertiesHeight';
public const FIELD_PROPERTIES_PRODUCER = 'PropertiesProducer';
public const FIELD_PROPERTIES_PROCESS = 'PropertiesProcess';
public const FIELD_PROPERTIES_ORIGIN = 'PropertiesOrigin';
public const FIELD_PROPERTIES_VARIETY = 'PropertiesVariety';
public const FIELD_TASTE_PROFILE = 'TasteProfile';
public const FIELD_PRICE_UNIT_REFERENCE = 'PriceUnitReference';
public const FIELD_PRICE_INCLUDES_TAX = 'PriceIncludesTax';
public const FIELD_DELIVERY_TIME = 'DeliveryTime';
public const FIELD_ALTITUDE = 'Altitude';
public const FIELD_PRODUCERS = 'Producers';
public const FIELD_PROCESS = 'Process';
public const FIELD_ORIGIN = 'Origin';
public const FIELD_VARIETY = 'Variety';
public const FIELD_TASTE_NOTES = 'TasteNotes';
public const FIELD_DETAILED_DESCRIPTION = 'DetailedDescription';
public const FIELD_PRODUCER_INFORMATION = 'ProducerInformation';
public const FIELD_INTRO_DESCRIPTION = 'IntroDescription';
public const FIELD_BASE_PRICE = 'BasePrice';
public const FIELD_TAX_INFO = 'TaxInfo';
public const FIELD_PRODUCT_PROPERTIES = 'ProductProperties';
public const FIELD_TASTE = 'Taste';
public const FIELD_PRODUCT_DETAIL_DESCRIPTION = 'ProductDetailDescription';
public const FIELD_ADDITIONAL_DESCRIPTION = 'AdditionalDescription';
public const FIELD_PRODUCER_DETAILS = 'ProducerDetails';
public const FIELD_PRODUCER_INFO = 'ProducerInfo';
public const FIELD_PRICE_INFO = 'PriceInfo';
public const FIELD_DESCRIPTION_INTRO = 'DescriptionIntro';
public const FIELD_DELIVERY_INFO = 'DeliveryInfo';
public const FIELD_ATTRIBUTES = 'Attributes';
public const FIELD_THE_STORY_BEHIND = 'TheStoryBehind';
public const FIELD_LONG_DESCRIPTION = 'LongDescription';
public const FIELD_MEET_THE_PRODUCER = 'MeetTheProducer';
public const FIELD_VARIETAL = 'Varietal';

protected $classId = "StaticImportedProductType1";
protected $className = "StaticImportedProductType1";
protected $Title;
protected $Manufacturer;
protected $Description;
protected $Intro;
protected $PriceUnit;
protected $ProducerStory;
protected $PropertiesHeight;
protected $PropertiesProducer;
protected $PropertiesProcess;
protected $PropertiesOrigin;
protected $PropertiesVariety;
protected $TasteProfile;
protected $PriceUnitReference;
protected $PriceIncludesTax;
protected $DeliveryTime;
protected $Altitude;
protected $Producers;
protected $Process;
protected $Origin;
protected $Variety;
protected $TasteNotes;
protected $DetailedDescription;
protected $ProducerInformation;
protected $IntroDescription;
protected $BasePrice;
protected $TaxInfo;
protected $ProductProperties;
protected $Taste;
protected $ProductDetailDescription;
protected $AdditionalDescription;
protected $ProducerDetails;
protected $ProducerInfo;
protected $PriceInfo;
protected $DescriptionIntro;
protected $DeliveryInfo;
protected $Attributes;
protected $TheStoryBehind;
protected $LongDescription;
protected $MeetTheProducer;
protected $Varietal;


/**
* @param array $values
* @return static
*/
public static function create(array $values = []): static
{
	$object = new static();
	$object->setValues($values);
	return $object;
}

/**
* Get Title - Title
* @return string|null
*/
public function getTitle(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("Title");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->Title;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("Title")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("Title");
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
* Set Title - Title
* @param string|null $Title
* @return $this
*/
public function setTitle(?string $Title): static
{
	$this->markFieldDirty("Title", true);

	$this->Title = $Title;

	return $this;
}

/**
* Get Manufacturer - Manufacturer
* @return string|null
*/
public function getManufacturer(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("Manufacturer");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->Manufacturer;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("Manufacturer")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("Manufacturer");
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
* Set Manufacturer - Manufacturer
* @param string|null $Manufacturer
* @return $this
*/
public function setManufacturer(?string $Manufacturer): static
{
	$this->markFieldDirty("Manufacturer", true);

	$this->Manufacturer = $Manufacturer;

	return $this;
}

/**
* Get Description - Description
* @return string|null
*/
public function getDescription(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("Description");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->Description;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("Description")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("Description");
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
* Set Description - Description
* @param string|null $Description
* @return $this
*/
public function setDescription(?string $Description): static
{
	$this->markFieldDirty("Description", true);

	$this->Description = $Description;

	return $this;
}

/**
* Get Intro - Intro
* @return string|null
*/
public function getIntro(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("Intro");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->Intro;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("Intro")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("Intro");
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
* Set Intro - Intro
* @param string|null $Intro
* @return $this
*/
public function setIntro(?string $Intro): static
{
	$this->markFieldDirty("Intro", true);

	$this->Intro = $Intro;

	return $this;
}

/**
* Get PriceUnit - PriceUnit
* @return string|null
*/
public function getPriceUnit(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("PriceUnit");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->PriceUnit;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("PriceUnit")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("PriceUnit");
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
* Set PriceUnit - PriceUnit
* @param string|null $PriceUnit
* @return $this
*/
public function setPriceUnit(?string $PriceUnit): static
{
	$this->markFieldDirty("PriceUnit", true);

	$this->PriceUnit = $PriceUnit;

	return $this;
}

/**
* Get ProducerStory - ProducerStory
* @return string|null
*/
public function getProducerStory(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("ProducerStory");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->ProducerStory;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("ProducerStory")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("ProducerStory");
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
* Set ProducerStory - ProducerStory
* @param string|null $ProducerStory
* @return $this
*/
public function setProducerStory(?string $ProducerStory): static
{
	$this->markFieldDirty("ProducerStory", true);

	$this->ProducerStory = $ProducerStory;

	return $this;
}

/**
* Get PropertiesHeight - PropertiesHeight
* @return string|null
*/
public function getPropertiesHeight(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("PropertiesHeight");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->PropertiesHeight;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("PropertiesHeight")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("PropertiesHeight");
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
* Set PropertiesHeight - PropertiesHeight
* @param string|null $PropertiesHeight
* @return $this
*/
public function setPropertiesHeight(?string $PropertiesHeight): static
{
	$this->markFieldDirty("PropertiesHeight", true);

	$this->PropertiesHeight = $PropertiesHeight;

	return $this;
}

/**
* Get PropertiesProducer - PropertiesProducer
* @return string|null
*/
public function getPropertiesProducer(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("PropertiesProducer");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->PropertiesProducer;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("PropertiesProducer")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("PropertiesProducer");
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
* Set PropertiesProducer - PropertiesProducer
* @param string|null $PropertiesProducer
* @return $this
*/
public function setPropertiesProducer(?string $PropertiesProducer): static
{
	$this->markFieldDirty("PropertiesProducer", true);

	$this->PropertiesProducer = $PropertiesProducer;

	return $this;
}

/**
* Get PropertiesProcess - PropertiesProcess
* @return string|null
*/
public function getPropertiesProcess(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("PropertiesProcess");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->PropertiesProcess;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("PropertiesProcess")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("PropertiesProcess");
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
* Set PropertiesProcess - PropertiesProcess
* @param string|null $PropertiesProcess
* @return $this
*/
public function setPropertiesProcess(?string $PropertiesProcess): static
{
	$this->markFieldDirty("PropertiesProcess", true);

	$this->PropertiesProcess = $PropertiesProcess;

	return $this;
}

/**
* Get PropertiesOrigin - PropertiesOrigin
* @return string|null
*/
public function getPropertiesOrigin(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("PropertiesOrigin");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->PropertiesOrigin;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("PropertiesOrigin")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("PropertiesOrigin");
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
* Set PropertiesOrigin - PropertiesOrigin
* @param string|null $PropertiesOrigin
* @return $this
*/
public function setPropertiesOrigin(?string $PropertiesOrigin): static
{
	$this->markFieldDirty("PropertiesOrigin", true);

	$this->PropertiesOrigin = $PropertiesOrigin;

	return $this;
}

/**
* Get PropertiesVariety - PropertiesVariety
* @return string|null
*/
public function getPropertiesVariety(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("PropertiesVariety");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->PropertiesVariety;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("PropertiesVariety")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("PropertiesVariety");
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
* Set PropertiesVariety - PropertiesVariety
* @param string|null $PropertiesVariety
* @return $this
*/
public function setPropertiesVariety(?string $PropertiesVariety): static
{
	$this->markFieldDirty("PropertiesVariety", true);

	$this->PropertiesVariety = $PropertiesVariety;

	return $this;
}

/**
* Get TasteProfile - TasteProfile
* @return string[]|null
*/
public function getTasteProfile(): ?array
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("TasteProfile");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->TasteProfile;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("TasteProfile")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("TasteProfile");
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
* Set TasteProfile - TasteProfile
* @param string[]|null $TasteProfile
* @return $this
*/
public function setTasteProfile(?array $TasteProfile): static
{
	$this->markFieldDirty("TasteProfile", true);

	$this->TasteProfile = $TasteProfile;

	return $this;
}

/**
* Get PriceUnitReference - PriceUnitReference
* @return string|null
*/
public function getPriceUnitReference(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("PriceUnitReference");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->PriceUnitReference;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("PriceUnitReference")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("PriceUnitReference");
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
* Set PriceUnitReference - PriceUnitReference
* @param string|null $PriceUnitReference
* @return $this
*/
public function setPriceUnitReference(?string $PriceUnitReference): static
{
	$this->markFieldDirty("PriceUnitReference", true);

	$this->PriceUnitReference = $PriceUnitReference;

	return $this;
}

/**
* Get PriceIncludesTax - PriceIncludesTax
* @return string|null
*/
public function getPriceIncludesTax(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("PriceIncludesTax");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->PriceIncludesTax;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("PriceIncludesTax")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("PriceIncludesTax");
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
* Set PriceIncludesTax - PriceIncludesTax
* @param string|null $PriceIncludesTax
* @return $this
*/
public function setPriceIncludesTax(?string $PriceIncludesTax): static
{
	$this->markFieldDirty("PriceIncludesTax", true);

	$this->PriceIncludesTax = $PriceIncludesTax;

	return $this;
}

/**
* Get DeliveryTime - DeliveryTime
* @return string|null
*/
public function getDeliveryTime(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("DeliveryTime");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->DeliveryTime;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("DeliveryTime")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("DeliveryTime");
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
* Set DeliveryTime - DeliveryTime
* @param string|null $DeliveryTime
* @return $this
*/
public function setDeliveryTime(?string $DeliveryTime): static
{
	$this->markFieldDirty("DeliveryTime", true);

	$this->DeliveryTime = $DeliveryTime;

	return $this;
}

/**
* Get Altitude - Altitude
* @return string|null
*/
public function getAltitude(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("Altitude");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->Altitude;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("Altitude")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("Altitude");
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
* Set Altitude - Altitude
* @param string|null $Altitude
* @return $this
*/
public function setAltitude(?string $Altitude): static
{
	$this->markFieldDirty("Altitude", true);

	$this->Altitude = $Altitude;

	return $this;
}

/**
* Get Producers - Producers
* @return string|null
*/
public function getProducers(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("Producers");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->Producers;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("Producers")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("Producers");
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
* Set Producers - Producers
* @param string|null $Producers
* @return $this
*/
public function setProducers(?string $Producers): static
{
	$this->markFieldDirty("Producers", true);

	$this->Producers = $Producers;

	return $this;
}

/**
* Get Process - Process
* @return string|null
*/
public function getProcess(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("Process");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->Process;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("Process")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("Process");
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
* Set Process - Process
* @param string|null $Process
* @return $this
*/
public function setProcess(?string $Process): static
{
	$this->markFieldDirty("Process", true);

	$this->Process = $Process;

	return $this;
}

/**
* Get Origin - Origin
* @return string|null
*/
public function getOrigin(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("Origin");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->Origin;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("Origin")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("Origin");
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
* Set Origin - Origin
* @param string|null $Origin
* @return $this
*/
public function setOrigin(?string $Origin): static
{
	$this->markFieldDirty("Origin", true);

	$this->Origin = $Origin;

	return $this;
}

/**
* Get Variety - Variety
* @return string|null
*/
public function getVariety(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("Variety");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->Variety;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("Variety")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("Variety");
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
* Set Variety - Variety
* @param string|null $Variety
* @return $this
*/
public function setVariety(?string $Variety): static
{
	$this->markFieldDirty("Variety", true);

	$this->Variety = $Variety;

	return $this;
}

/**
* Get TasteNotes - TasteNotes
* @return string[]|null
*/
public function getTasteNotes(): ?array
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("TasteNotes");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->TasteNotes;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("TasteNotes")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("TasteNotes");
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
* Set TasteNotes - TasteNotes
* @param string[]|null $TasteNotes
* @return $this
*/
public function setTasteNotes(?array $TasteNotes): static
{
	$this->markFieldDirty("TasteNotes", true);

	$this->TasteNotes = $TasteNotes;

	return $this;
}

/**
* Get DetailedDescription - DetailedDescription
* @return string|null
*/
public function getDetailedDescription(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("DetailedDescription");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->DetailedDescription;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("DetailedDescription")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("DetailedDescription");
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
* Set DetailedDescription - DetailedDescription
* @param string|null $DetailedDescription
* @return $this
*/
public function setDetailedDescription(?string $DetailedDescription): static
{
	$this->markFieldDirty("DetailedDescription", true);

	$this->DetailedDescription = $DetailedDescription;

	return $this;
}

/**
* Get ProducerInformation - ProducerInformation
* @return string|null
*/
public function getProducerInformation(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("ProducerInformation");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->ProducerInformation;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("ProducerInformation")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("ProducerInformation");
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
* Set ProducerInformation - ProducerInformation
* @param string|null $ProducerInformation
* @return $this
*/
public function setProducerInformation(?string $ProducerInformation): static
{
	$this->markFieldDirty("ProducerInformation", true);

	$this->ProducerInformation = $ProducerInformation;

	return $this;
}

/**
* Get IntroDescription - IntroDescription
* @return string|null
*/
public function getIntroDescription(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("IntroDescription");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->IntroDescription;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("IntroDescription")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("IntroDescription");
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
* Set IntroDescription - IntroDescription
* @param string|null $IntroDescription
* @return $this
*/
public function setIntroDescription(?string $IntroDescription): static
{
	$this->markFieldDirty("IntroDescription", true);

	$this->IntroDescription = $IntroDescription;

	return $this;
}

/**
* Get BasePrice - BasePrice
* @return string|null
*/
public function getBasePrice(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("BasePrice");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->BasePrice;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("BasePrice")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("BasePrice");
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
* Set BasePrice - BasePrice
* @param string|null $BasePrice
* @return $this
*/
public function setBasePrice(?string $BasePrice): static
{
	$this->markFieldDirty("BasePrice", true);

	$this->BasePrice = $BasePrice;

	return $this;
}

/**
* Get TaxInfo - TaxInfo
* @return string|null
*/
public function getTaxInfo(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("TaxInfo");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->TaxInfo;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("TaxInfo")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("TaxInfo");
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
* Set TaxInfo - TaxInfo
* @param string|null $TaxInfo
* @return $this
*/
public function setTaxInfo(?string $TaxInfo): static
{
	$this->markFieldDirty("TaxInfo", true);

	$this->TaxInfo = $TaxInfo;

	return $this;
}

/**
* Get ProductProperties - ProductProperties
* @return string|null
*/
public function getProductProperties(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("ProductProperties");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->ProductProperties;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("ProductProperties")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("ProductProperties");
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
* Set ProductProperties - ProductProperties
* @param string|null $ProductProperties
* @return $this
*/
public function setProductProperties(?string $ProductProperties): static
{
	$this->markFieldDirty("ProductProperties", true);

	$this->ProductProperties = $ProductProperties;

	return $this;
}

/**
* Get Taste - Taste
* @return string[]|null
*/
public function getTaste(): ?array
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("Taste");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->Taste;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("Taste")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("Taste");
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
* Set Taste - Taste
* @param string[]|null $Taste
* @return $this
*/
public function setTaste(?array $Taste): static
{
	$this->markFieldDirty("Taste", true);

	$this->Taste = $Taste;

	return $this;
}

/**
* Get ProductDetailDescription - ProductDetailDescription
* @return string|null
*/
public function getProductDetailDescription(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("ProductDetailDescription");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->ProductDetailDescription;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("ProductDetailDescription")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("ProductDetailDescription");
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
* Set ProductDetailDescription - ProductDetailDescription
* @param string|null $ProductDetailDescription
* @return $this
*/
public function setProductDetailDescription(?string $ProductDetailDescription): static
{
	$this->markFieldDirty("ProductDetailDescription", true);

	$this->ProductDetailDescription = $ProductDetailDescription;

	return $this;
}

/**
* Get AdditionalDescription - AdditionalDescription
* @return string|null
*/
public function getAdditionalDescription(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("AdditionalDescription");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->AdditionalDescription;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("AdditionalDescription")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("AdditionalDescription");
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
* Set AdditionalDescription - AdditionalDescription
* @param string|null $AdditionalDescription
* @return $this
*/
public function setAdditionalDescription(?string $AdditionalDescription): static
{
	$this->markFieldDirty("AdditionalDescription", true);

	$this->AdditionalDescription = $AdditionalDescription;

	return $this;
}

/**
* Get ProducerDetails - ProducerDetails
* @return string|null
*/
public function getProducerDetails(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("ProducerDetails");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->ProducerDetails;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("ProducerDetails")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("ProducerDetails");
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
* Set ProducerDetails - ProducerDetails
* @param string|null $ProducerDetails
* @return $this
*/
public function setProducerDetails(?string $ProducerDetails): static
{
	$this->markFieldDirty("ProducerDetails", true);

	$this->ProducerDetails = $ProducerDetails;

	return $this;
}

/**
* Get ProducerInfo - ProducerInfo
* @return string|null
*/
public function getProducerInfo(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("ProducerInfo");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->ProducerInfo;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("ProducerInfo")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("ProducerInfo");
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
* Set ProducerInfo - ProducerInfo
* @param string|null $ProducerInfo
* @return $this
*/
public function setProducerInfo(?string $ProducerInfo): static
{
	$this->markFieldDirty("ProducerInfo", true);

	$this->ProducerInfo = $ProducerInfo;

	return $this;
}

/**
* Get PriceInfo - PriceInfo
* @return string|null
*/
public function getPriceInfo(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("PriceInfo");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->PriceInfo;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("PriceInfo")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("PriceInfo");
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
* Set PriceInfo - PriceInfo
* @param string|null $PriceInfo
* @return $this
*/
public function setPriceInfo(?string $PriceInfo): static
{
	$this->markFieldDirty("PriceInfo", true);

	$this->PriceInfo = $PriceInfo;

	return $this;
}

/**
* Get DescriptionIntro - DescriptionIntro
* @return string|null
*/
public function getDescriptionIntro(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("DescriptionIntro");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->DescriptionIntro;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("DescriptionIntro")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("DescriptionIntro");
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
* Set DescriptionIntro - DescriptionIntro
* @param string|null $DescriptionIntro
* @return $this
*/
public function setDescriptionIntro(?string $DescriptionIntro): static
{
	$this->markFieldDirty("DescriptionIntro", true);

	$this->DescriptionIntro = $DescriptionIntro;

	return $this;
}

/**
* Get DeliveryInfo - DeliveryInfo
* @return string|null
*/
public function getDeliveryInfo(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("DeliveryInfo");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->DeliveryInfo;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("DeliveryInfo")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("DeliveryInfo");
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
* Set DeliveryInfo - DeliveryInfo
* @param string|null $DeliveryInfo
* @return $this
*/
public function setDeliveryInfo(?string $DeliveryInfo): static
{
	$this->markFieldDirty("DeliveryInfo", true);

	$this->DeliveryInfo = $DeliveryInfo;

	return $this;
}

/**
* Get Attributes - Attributes
* @return string|null
*/
public function getAttributes(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("Attributes");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->Attributes;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("Attributes")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("Attributes");
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
* Set Attributes - Attributes
* @param string|null $Attributes
* @return $this
*/
public function setAttributes(?string $Attributes): static
{
	$this->markFieldDirty("Attributes", true);

	$this->Attributes = $Attributes;

	return $this;
}

/**
* Get TheStoryBehind - TheStoryBehind
* @return string|null
*/
public function getTheStoryBehind(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("TheStoryBehind");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->TheStoryBehind;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("TheStoryBehind")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("TheStoryBehind");
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
* Set TheStoryBehind - TheStoryBehind
* @param string|null $TheStoryBehind
* @return $this
*/
public function setTheStoryBehind(?string $TheStoryBehind): static
{
	$this->markFieldDirty("TheStoryBehind", true);

	$this->TheStoryBehind = $TheStoryBehind;

	return $this;
}

/**
* Get LongDescription - LongDescription
* @return string|null
*/
public function getLongDescription(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("LongDescription");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->LongDescription;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("LongDescription")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("LongDescription");
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
* Set LongDescription - LongDescription
* @param string|null $LongDescription
* @return $this
*/
public function setLongDescription(?string $LongDescription): static
{
	$this->markFieldDirty("LongDescription", true);

	$this->LongDescription = $LongDescription;

	return $this;
}

/**
* Get MeetTheProducer - MeetTheProducer
* @return string|null
*/
public function getMeetTheProducer(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("MeetTheProducer");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->MeetTheProducer;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("MeetTheProducer")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("MeetTheProducer");
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
* Set MeetTheProducer - MeetTheProducer
* @param string|null $MeetTheProducer
* @return $this
*/
public function setMeetTheProducer(?string $MeetTheProducer): static
{
	$this->markFieldDirty("MeetTheProducer", true);

	$this->MeetTheProducer = $MeetTheProducer;

	return $this;
}

/**
* Get Varietal - Varietal
* @return string|null
*/
public function getVarietal(): ?string
{
	if ($this instanceof PreGetValueHookInterface && !\Pimcore::inAdmin()) {
		$preValue = $this->preGetValue("Varietal");
		if ($preValue !== null) {
			return $preValue;
		}
	}

	$data = $this->Varietal;

	if (\Pimcore\Model\DataObject::doGetInheritedValues() && $this->getClass()->getFieldDefinition("Varietal")->isEmpty($data)) {
		try {
			return $this->getValueFromParent("Varietal");
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
* Set Varietal - Varietal
* @param string|null $Varietal
* @return $this
*/
public function setVarietal(?string $Varietal): static
{
	$this->markFieldDirty("Varietal", true);

	$this->Varietal = $Varietal;

	return $this;
}

}


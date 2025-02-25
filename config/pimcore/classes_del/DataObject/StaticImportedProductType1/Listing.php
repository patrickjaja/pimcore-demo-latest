<?php

namespace Pimcore\Model\DataObject\StaticImportedProductType1;

use Pimcore\Model;
use Pimcore\Model\DataObject;

/**
 * @method DataObject\StaticImportedProductType1|false current()
 * @method DataObject\StaticImportedProductType1[] load()
 * @method DataObject\StaticImportedProductType1[] getData()
 * @method DataObject\StaticImportedProductType1[] getObjects()
 */

class Listing extends DataObject\Listing\Concrete
{
protected $classId = "StaticImportedProductType1";
protected $className = "StaticImportedProductType1";


/**
* Filter by Title (Title)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByTitle ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("Title")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by Manufacturer (Manufacturer)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByManufacturer ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("Manufacturer")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by Description (Description)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByDescription ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("Description")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by Intro (Intro)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByIntro ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("Intro")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by PriceUnit (PriceUnit)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByPriceUnit ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("PriceUnit")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by ProducerStory (ProducerStory)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByProducerStory ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("ProducerStory")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by PropertiesHeight (PropertiesHeight)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByPropertiesHeight ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("PropertiesHeight")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by PropertiesProducer (PropertiesProducer)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByPropertiesProducer ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("PropertiesProducer")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by PropertiesProcess (PropertiesProcess)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByPropertiesProcess ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("PropertiesProcess")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by PropertiesOrigin (PropertiesOrigin)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByPropertiesOrigin ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("PropertiesOrigin")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by PropertiesVariety (PropertiesVariety)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByPropertiesVariety ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("PropertiesVariety")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by TasteProfile (TasteProfile)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByTasteProfile ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("TasteProfile")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by PriceUnitReference (PriceUnitReference)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByPriceUnitReference ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("PriceUnitReference")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by PriceIncludesTax (PriceIncludesTax)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByPriceIncludesTax ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("PriceIncludesTax")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by DeliveryTime (DeliveryTime)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByDeliveryTime ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("DeliveryTime")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by Altitude (Altitude)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByAltitude ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("Altitude")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by Producers (Producers)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByProducers ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("Producers")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by Process (Process)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByProcess ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("Process")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by Origin (Origin)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByOrigin ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("Origin")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by Variety (Variety)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByVariety ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("Variety")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by TasteNotes (TasteNotes)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByTasteNotes ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("TasteNotes")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by DetailedDescription (DetailedDescription)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByDetailedDescription ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("DetailedDescription")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by ProducerInformation (ProducerInformation)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByProducerInformation ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("ProducerInformation")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by IntroDescription (IntroDescription)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByIntroDescription ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("IntroDescription")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by BasePrice (BasePrice)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByBasePrice ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("BasePrice")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by TaxInfo (TaxInfo)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByTaxInfo ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("TaxInfo")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by ProductProperties (ProductProperties)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByProductProperties ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("ProductProperties")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by Taste (Taste)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByTaste ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("Taste")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by ProductDetailDescription (ProductDetailDescription)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByProductDetailDescription ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("ProductDetailDescription")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by AdditionalDescription (AdditionalDescription)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByAdditionalDescription ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("AdditionalDescription")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by ProducerDetails (ProducerDetails)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByProducerDetails ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("ProducerDetails")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by ProducerInfo (ProducerInfo)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByProducerInfo ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("ProducerInfo")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by PriceInfo (PriceInfo)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByPriceInfo ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("PriceInfo")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by DescriptionIntro (DescriptionIntro)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByDescriptionIntro ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("DescriptionIntro")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by DeliveryInfo (DeliveryInfo)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByDeliveryInfo ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("DeliveryInfo")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by Attributes (Attributes)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByAttributes ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("Attributes")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by TheStoryBehind (TheStoryBehind)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByTheStoryBehind ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("TheStoryBehind")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by LongDescription (LongDescription)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByLongDescription ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("LongDescription")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by MeetTheProducer (MeetTheProducer)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByMeetTheProducer ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("MeetTheProducer")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by Varietal (Varietal)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByVarietal ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("Varietal")->addListingFilter($this, $data, $operator);
	return $this;
}



}

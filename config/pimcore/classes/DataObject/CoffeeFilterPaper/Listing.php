<?php

namespace Pimcore\Model\DataObject\CoffeeFilterPaper;

use Pimcore\Model;
use Pimcore\Model\DataObject;

/**
 * @method DataObject\CoffeeFilterPaper|false current()
 * @method DataObject\CoffeeFilterPaper[] load()
 * @method DataObject\CoffeeFilterPaper[] getData()
 * @method DataObject\CoffeeFilterPaper[] getObjects()
 */

class Listing extends DataObject\Listing\Concrete
{
protected $classId = "CoffeeFilterPaper";
protected $className = "CoffeeFilterPaper";


/**
* Filter by name (Name)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByName ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("name")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by previewImageUrl (Preview Image Url)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByPreviewImageUrl ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("previewImageUrl")->addListingFilter($this, $data, $operator);
	return $this;
}

/**
* Filter by description (Description)
* @param string|int|float|array|Model\Element\ElementInterface $data  comparison data, can be scalar or array (if operator is e.g. "IN (?)")
* @param string $operator  SQL comparison operator, e.g. =, <, >= etc. You can use "?" as placeholder, e.g. "IN (?)"
* @return $this
*/
public function filterByDescription ($data, $operator = '='): static
{
	$this->getClass()->getFieldDefinition("description")->addListingFilter($this, $data, $operator);
	return $this;
}



}

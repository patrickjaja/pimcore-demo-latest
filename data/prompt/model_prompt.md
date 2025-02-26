You are an expert JSON transformer. Your task is to map the structure of the input JSON to match the target JSON structure. I will provide you one example mapping, so you know exactly on how to create a mapping on your own.

Input JSON:
{{INPUT_JSON}}

Please transform the input JSON to match the structure of the target JSON (see example). Ensure that all relevant information from the input is correctly mapped to the appropriate fields in the target structure. If there's no direct mapping for a field, use a sensible default or leave it empty. The output should be a valid JSON that follows the exact structure of the target JSON.

Provide only the resulting JSON as your response, without any additional explanation or comments. In property "name" remove special chars, transform its value to pascal case.

Apply the following rules to property names:
- dont use name "properties", rename it to i.e. "productProperties"

Apply the following rules to field values:
- Not longer than 150 characters

Example:

Input JSON (Filename: product_model_1.json):
{
"product_data_model": [
{
"description": "The name or title of the product",
"enum": null,
"name": "title",
"required": true,
"type": "string"
},
{
"description": "The manufacturer or brand of the product",
"enum": null,
"name": "manufacturer",
"required": true,
"type": "string"
},
{
"description": "A detailed overview of the product features or characteristics",
"enum": null,
"name": "description",
"required": false,
"type": "string"
},
{
"description": "Process method used for product preparation, especially in coffee production",
"enum": [
"Pulped Natural",
"Washed",
"Natural",
"Washed, E.A."
],
"name": "process",
"required": false,
"type": "string"
},
{
"name": "taste_notes",
"type": "array",
"description": "Specific notes on the taste profile of the product",
"required": false,
"enum": [
"Orange",
"Aprikose",
"Milchschokolade",
"Clementine",
"Ahornsirup",
"Milchschokolade"
]
}
]
}


Target JSON structure (Filename: class_StaticImportedProductType1_export.json):
{
"id": "StaticImportedProductType1",
"title": "",
"description": "",
"modificationDate": 1740259282,
"parentClass": "\\App\\Model\\Product\\AbstractProduct",
"implementsInterfaces": "",
"listingParentClass": "",
"useTraits": "",
"listingUseTraits": "",
"allowInherit": true,
"allowVariants": false,
"showVariants": false,
"layoutDefinitions": {
"name": "pimcore_root",
"type": null,
"region": null,
"title": null,
"width": 0,
"height": 0,
"collapsible": false,
"collapsed": false,
"bodyStyle": null,
"datatype": "layout",
"children": [
{
"name": "Layout",
"type": null,
"region": null,
"title": "",
"width": 0,
"height": 0,
"collapsible": false,
"collapsed": false,
"bodyStyle": "",
"datatype": "layout",
"children": [
{
"name": "Basedata",
"type": null,
"region": null,
"title": "Basedata",
"width": 0,
"height": 0,
"collapsible": false,
"collapsed": false,
"bodyStyle": "",
"datatype": "layout",
"children": [
{
"name": "title",
"title": "Title",
"tooltip": "The name or title of the product",
"mandatory": true,
"noteditable": false,
"index": false,
"locked": false,
"style": "",
"permissions": null,
"fieldtype": "input",
"relationType": false,
"invisible": false,
"visibleGridView": true,
"visibleSearch": true,
"maxLength": null,
"showCharCount": false,
"excludeFromSearchIndex": false,
"height": "",
"width": "",
"datatype": "data"
},
{
"name": "manufacturer",
"title": "Manufacturer",
"tooltip": "The manufacturer or brand of the product",
"mandatory": true,
"noteditable": false,
"index": false,
"locked": false,
"style": "",
"permissions": null,
"fieldtype": "input",
"relationType": false,
"invisible": false,
"visibleGridView": true,
"visibleSearch": true,
"maxLength": null,
"showCharCount": false,
"excludeFromSearchIndex": false,
"height": "",
"width": "",
"datatype": "data"
},
{
"name": "description",
"title": "Description",
"tooltip": "A detailed overview of the product features or characteristics",
"mandatory": false,
"noteditable": false,
"index": false,
"locked": false,
"style": "",
"permissions": null,
"fieldtype": "input",
"relationType": false,
"invisible": false,
"visibleGridView": true,
"visibleSearch": true,
"maxLength": null,
"showCharCount": false,
"excludeFromSearchIndex": false,
"height": "",
"width": "",
"datatype": "data"
},
{
"name": "process",
"title": "Process",
"tooltip": "Process method used for product preparation, especially in coffee production",
"mandatory": false,
"noteditable": false,
"index": false,
"locked": false,
"style": "",
"permissions": null,
"fieldtype": "select",
"relationType": false,
"invisible": false,
"visibleGridView": false,
"visibleSearch": false,
"options": [
{
"key": "pulped_natural",
"value": "pulped_natural"
},
{
"key": "washed",
"value": "washed"
}
],
"defaultValue": "",
"columnLength": 190,
"dynamicOptions": false,
"defaultValueGenerator": "",
"width": "",
"optionsProviderType": "configure",
"optionsProviderClass": "",
"optionsProviderData": "",
"datatype": "data"
},
{
"name": "tasteNotes",
"title": "TasteNotes",
"tooltip": "",
"mandatory": false,
"noteditable": false,
"index": false,
"locked": false,
"style": "",
"permissions": null,
"fieldtype": "multiselect",
"relationType": false,
"invisible": false,
"visibleGridView": false,
"visibleSearch": false,
"options": [
{
"key": "orange",
"value": "Orange"
},
{
"key": "aprikose",
"value": "Aprikose"
}
],
"maxItems": null,
"renderType": "list",
"dynamicOptions": false,
"defaultValue": null,
"height": "",
"width": "",
"defaultValueGenerator": "",
"optionsProviderType": "configure",
"optionsProviderClass": "",
"optionsProviderData": "",
"datatype": "data"
}
],
"locked": false,
"fieldtype": "panel",
"layout": null,
"border": false,
"icon": "",
"labelWidth": 100,
"labelAlign": "left"
}
],
"locked": false,
"fieldtype": "tabpanel",
"border": false,
"tabPosition": "top"
}
],
"locked": false,
"fieldtype": "panel",
"layout": null,
"border": false,
"icon": null,
"labelWidth": 100,
"labelAlign": "left"
},
"icon": "/bundles/pimcoreadmin/img/flat-color-icons/advance.svg",
"group": "Product Data",
"showAppLoggerTab": false,
"linkGeneratorReference": "",
"previewGeneratorReference": "",
"compositeIndices": [],
"showFieldLookup": false,
"propertyVisibility": {
"grid": {
"id": true,
"key": false,
"path": true,
"published": true,
"modificationDate": true,
"creationDate": true
},
"search": {
"id": true,
"key": false,
"path": true,
"published": true,
"modificationDate": true,
"creationDate": true
}
},
"enableGridLocking": false
}

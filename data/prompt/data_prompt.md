You are an expert JSON transformer. Your task is to map the Input JSON against its Data Stucture JSON. Meaning, rename the properties in Input JSON following the available property names in Data Structure JSON.
Remove or ignore empty objects in mapping.

Input JSON:
{{INPUT_JSON}}

Data Structure JSON:
{{DATA_STRUCTURE_INPUT}}

Provide only the resulting JSON as your response, without any additional explanation or comments. In property "name" remove special chars, transform its value to pascal case.

Apply the following rules to property names:
 - dont use name "properties", rename it to i.e. "productProperties"

Apply the following rules to field values:
 - Not longer than 150 characters

Keep the property list flat, dont create additional objects or arrays.

Example:

Input JSON (Filename: product_data_1.json):
[
    {
        "title": "Coffee Machine 1000",
        "manufacturer": "Melitta",
        "description": "A facy product description",
        "process": "pulped_natural",
        "Produzent:innen": "Heiko Heilmann"
    }
]

Data Structure JSON (Filename: product_model_1.json):
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

Output JSON (Filename: product_data_1_mapped.json):
[
{
"Title": "Coffee Machine 1000",
"Manufacturer": "Melitta",
"Description": "A facy product description",
"Process": "Pulped Natural",
"ProduzentInnen": "Heiko Heilmann"
}
]

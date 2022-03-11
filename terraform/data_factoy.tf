resource "azurerm_data_factory" "cnes" {
  name                = "cnes"
  resource_group_name      = azurerm_resource_group.cnes.name
  location                 = azurerm_resource_group.cnes.location
}
 

resource "azurerm_data_factory_pipeline" "cnes" {
  name                = "cnes"
  resource_group_name = azurerm_resource_group.cnes.name
  data_factory_id     = azurerm_data_factory.cnes.id
}
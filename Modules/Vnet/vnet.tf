resource "azurerm_virtual_network" "myvnet1" {
  resource_group_name = azurerm_resource_group.myrg1.name
  name                = var.vnet_name
  location            = azurerm_resource_group.myrg1.location
  address_space       = var.vnet_address
}

resource "azurerm_subnet" "mysubnet1" {
  name = var.subnet_name
  resource_group_name = azurerm_resource_group.myrg1.name
  virtual_network_name = azurerm_virtual_network.myvnet1.name
  address_prefixes     = var.subnet_address

}
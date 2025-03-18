resource "azurerm_resource_group" "rg1" {
  name     = "trainer-saintgobain"
  location = var.region
}

resource "azurerm_virtual_network" "vnet1" {
  name     = "trainer-saintgobain-vnet1"
  location = var.region
  address_space = ["21.21.21.0/24"]
  resource_group_name = azurerm_resource_group.rg1.name
}
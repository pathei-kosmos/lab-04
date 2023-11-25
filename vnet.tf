resource "azurerm_resource_group" "rg1" {
  name     = "${var.prefix}-rg1"
  location = var.location

  tags = {
    deployment = "Terraform"
  }
}

resource "azurerm_virtual_network" "vnet1" {
  name                = "${var.prefix}-vnet1"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  address_space       = ["10.40.0.0/20"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.40.0.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "10.40.1.0/24"
  }

  tags = {
    deployment = "Terraform"
  }
}
resource "azurerm_public_ip" "pip0" {
  name                = "${var.prefix}-pip0"
  resource_group_name = azurerm_resource_group.rg1.name
  location            = azurerm_resource_group.rg1.location
  allocation_method   = "Static"

  tags = {
    deployment = "Terraform"
  }
}

resource "azurerm_public_ip" "pip1" {
  name                = "${var.prefix}-pip1"
  resource_group_name = azurerm_resource_group.rg1.name
  location            = azurerm_resource_group.rg1.location
  allocation_method   = "Static"

  tags = {
    deployment = "Terraform"
  }
}
resource "azurerm_virtual_machine" "vm0" {
  name                  = "${var.prefix}-vm0"
  location              = azurerm_resource_group.rg1.location
  resource_group_name   = azurerm_resource_group.rg1.name
  network_interface_ids = [azurerm_network_interface.nic0.id]
  vm_size               = var.vm-size

  delete_os_disk_on_termination    = true
  delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  storage_os_disk {
    name              = "${var.prefix}-osDisk0"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "TestAdmin"
    admin_password = "TestAdmin104-04"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }

  tags = {
    deployment = "Terraform"
  }
}

resource "azurerm_virtual_machine" "vm1" {
  name                  = "${var.prefix}-vm1"
  location              = azurerm_resource_group.rg1.location
  resource_group_name   = azurerm_resource_group.rg1.name
  network_interface_ids = [azurerm_network_interface.nic1.id]
  vm_size               = var.vm-size

  delete_os_disk_on_termination    = true
  delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  storage_os_disk {
    name              = "${var.prefix}-osDisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "TestAdmin"
    admin_password = "TestAdmin104-04"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }

  tags = {
    deployment = "Terraform"
  }
}
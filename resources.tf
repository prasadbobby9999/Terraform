
resource "azurerm_resource_group" "test" {
  name     = "myterraform"
  location = "centralus"
}

resource "azurerm_storage_account" "test" {
  name                     = "myterraformblob7"
  resource_group_name      = "${azurerm_resource_group.test.name}"
  location                 = "centralus"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "test" {
  name                  = "myblobcntanr3"
  resource_group_name   = "${azurerm_resource_group.test.name}"
  storage_account_name  = "${azurerm_storage_account.test.name}"
  container_access_type = "private"
}
resource "azurerm_storage_container" "tdev" {
  name                  = "devlopercntr123"
  resource_group_name   = "${azurerm_resource_group.test.name}"
  storage_account_name  = "${azurerm_storage_account.test.name}"
  container_access_type = "private"
}

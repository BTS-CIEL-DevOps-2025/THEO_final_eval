resource "azurerm_resource_group" "example" {
  name     = "btsciel2finaleval"
  location = "France Central"
}

resource "azurerm_storage_account" "example" {
  name                     = "btsciel2finaleval"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
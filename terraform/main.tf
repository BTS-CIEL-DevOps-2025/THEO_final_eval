resource "azurerm_resource_group" "example" {
  name     = "THEO_final_eval_rg"
  location = "France Central"
}

resource "azurerm_storage_account" "example" {
  name                     = "THEOfinalevalsa"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "eval"
  }
}
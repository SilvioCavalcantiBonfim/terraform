resource "azurerm_resource_group" "fristresourcegroup" {
  name     = "resource-group-aula2"
  location = var.location
  tags = local.common_tags
}

resource "random_id" "prefix" {
  byte_length = 8
}

resource "azurerm_storage_account" "friststorageaccount" {
  name                     = "${random_id.prefix}account"
  resource_group_name      = azurerm_resource_group.fristresourcegroup.name
  location                 = azurerm_resource_group.fristresourcegroup.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = local.common_tags
}

resource "azurerm_storage_container" "friststoragecontainer" {
  name                  = "arquivos"
  storage_account_name  = azurerm_storage_account.friststorageaccount.name
}
resource "azurerm_resource_group" "ResourceGroupRemoteState" {
  name     = "remote-state"
  location = var.location
  tags = local.common_tags
}

resource "azurerm_storage_account" "storageRemoteState" {
  name                     = "silvioremotestate"
  resource_group_name      = azurerm_resource_group.ResourceGroupRemoteState.name
  location                 = azurerm_resource_group.ResourceGroupRemoteState.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  blob_properties {
    versioning_enabled = true
  }

  tags = local.common_tags
}

resource "azurerm_storage_container" "StorageContainerRemoteState" {
  name                  = "remote-state"
  storage_account_name  = azurerm_storage_account.storageRemoteState.name
}
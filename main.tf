provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

resource "azurerm_resource_group" "example" {
  name     = var.rg_name
  location = var.rg_location
}
resource "azurerm_storage_account" "storage" {
  name                     = var.sa_name
  resource_group_name      = azurerm_resource_group.az.name
  location                 = azurerm_resource_group.az.location
  account_tier             = var.sa_account_tier
  account_replication_type = var.account_replication_type


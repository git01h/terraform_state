terraform{
backend "azurerm" {
    
    resource_group_name  = "example"
    storage_account_name = "sa07896"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

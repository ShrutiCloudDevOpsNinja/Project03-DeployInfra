provider "azurerm" {
  features {}
 # subscription_id = "6e65d60a-bc12-4f70-8dcd-6cdb4da48e3e"
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }

backend "azurerm" {
    resource_group_name  = "shruti-rg"
    storage_account_name = "shrutiaccount2608"
    container_name       = "mycontainer"
    key                  = "shruti.tfstate"

  }
}

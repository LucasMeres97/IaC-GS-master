terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.77.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "meres-gs"
    storage_account_name = "meresgs"
    container_name       = "load"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  use_msi                    = true
}
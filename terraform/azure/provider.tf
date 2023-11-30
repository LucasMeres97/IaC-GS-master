terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.77.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-luquinha"
    storage_account_name = "lcs1997"
    container_name       = "tfstate1"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  use_msi                    = true
}
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.49.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  client_id       = "caac2cf7-7f2e-4119-9605-13e022f8d270"
  client_secret   = "3JO8Q~8_cd4bfKRZBzYAJNPYqlANmfg~gScINbU."
  tenant_id       = "7b9d7c1c-680d-436b-864e-90ed4ab7126e"
  subscription_id = "b663f139-634e-4415-9ab0-7badff34b58f"
  features {}
}


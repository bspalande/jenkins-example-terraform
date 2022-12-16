terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    tls = {
      source = "hashicorp/tls"
      version = "~>4.0"
    }
  }
}

provider "azurerm" {
  features {}
   subscription_id = "0444f5bd-f158-45de-9a56-190ccc7ee8c3"
    tenant_id       = "069ca8c2-34f8-4786-940a-96d33e8cf1f3"
}
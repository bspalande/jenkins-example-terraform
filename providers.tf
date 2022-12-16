variable "client_secret" {
}

# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id = "0444f5bd-f158-45de-9a56-190ccc7ee8c3"
  client_id       = "edef04e2-c2cb-4db9-b50c-245c86f851fb"
  client_secret   = "GJp8Q~4ufHwvmKSNjyTi.wC4XUy7njnsbEZAbang"
  tenant_id       = "069ca8c2-34f8-4786-940a-96d33e8cf1f3"
}
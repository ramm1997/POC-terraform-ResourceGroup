provider "azurerm" {
  # Configuration options
   features {}
}

resource "azurerm_resource_group" "ResourceGroup-POC-RG" {
  name     = "poc-resources"
  location = "eastus"
  tags = {
    Owner = "ramm"
  }
}

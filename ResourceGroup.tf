provider "azurerm" {
   version = "3.28.0"
   
  subscription_id = var.SubcriptionsID
  client_id = var.ClientID
  client_secret = var.ClientSecret
  tenant_id = var.TanentID
  
  features {}
}


resource "azurerm_resource_group" "ResourceGroup-POC-RG" {
  name     = "poc-resources"
  location = "eastus"
  tags = {
    Owner = "ramm"
  }
}

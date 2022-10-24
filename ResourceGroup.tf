#Establish connection by service principal!


provider "azurerm" {
  # Configuration options
  
  version = "3.28.0"
  
  subcriptions_id = var.SubcriptionsID
  client_id = var.ClientID
  client_secret = var.ClientSecret
  tanent_id = var.TanentID
  
  features {}
}


resource "azurerm_resource_group" "ResourceGroup-POC-RG" {
  name     = "poc-resources"
  location = "eastus"
  tags = {
    Owner = "ramm"
  }
}

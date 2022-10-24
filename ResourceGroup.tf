#Establish connection by service principal!


provider "azurerm" {
  # Configuration options
  
  version = "1.3.3"
  
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

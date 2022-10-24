#Establish connection by service principal!


provider "azurerm" {
  # Configuration options
  
  version = "1.3.3"
  
  SubcriptionsID = var.SubcriptionsID
  ClientID = var.ClientID
  ClientSecret = var.ClientSecret
  TanentID = var.TanentID
  
  features {}
}


resource "azurerm_resource_group" "ResourceGroup-POC-RG" {
  name     = "poc-resources"
  location = "eastus"
  tags = {
    Owner = "ramm"
  }
}

terraform {
  backend "azurerm" {

    resource_group_name = "tfstate"
    storage_account_name = "tfstate10571"
    container_name = "tfstate"
    key = "terraform.state"
    }
}
provider "azurerm" {
  version = "2.0.0"
  features {}
}
resource "azurerm_storage_account" "TechTargetSG" {

Name	= "tfstate10571"
resource_group_name	= var.resourceGroupName
Location	=	var.location
account_tier	=	"Standard"

account_replication_type = "GRS"

tags = {

environment = "development"
}

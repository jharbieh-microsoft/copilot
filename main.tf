# create azure resource group
resource "azurerm_resource_group" "rg" {
  name     = "my-rg"
  location = "westus"
}
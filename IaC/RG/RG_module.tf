############ Resource Group ################
resource "azurerm_resource_group" "rg-aks" {
  name     = var.rg_prefix
  location = var.rg_location
  tags = {
    Name = var.rg_prefix
  }
}

output "rg_id" {
    value = azurerm_resource_group.rg-aks.id
}

output "rg_name" {
    value = azurerm_resource_group.rg-aks.name
}

output "rg_location" {
  value = azurerm_resource_group.rg-aks.location
}
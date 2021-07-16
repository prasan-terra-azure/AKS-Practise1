resource "azurerm_container_registry" "acr-p1" {
  name = var.acr_name
  resource_group_name = var.rg_name
  location = var.rg_location
  sku = var.acr_sku
  admin_enabled = true
  //georeplications = [var.acr_replica_location]
}


########### ACR role Assignment ###########
resource "azurerm_role_assignment" "acr-role" {
  scope = azurerm_container_registry.acr-p1.id
  role_definition_name = "AcrPull"
  principal_id = var.princi_id
  skip_service_principal_aad_check = true
}


########### Outputs ####################

output "acr_url" {
    value = azurerm_container_registry.acr-p1.login_server
}

output "acr_id" {
    value = azurerm_container_registry.acr-p1.id
}
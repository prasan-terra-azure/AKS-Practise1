
output "az_sub_id" {
  value = data.azurerm_subscription.aks_p1.id
}
/*
output "az_sp_id" {
  value = data.azuread_service_principal.aks_sp.id
}

######## RG Output ############
output "RG_ID" {
  value = module.RG_module.rg_id
}

############# ACR Output ###########

output "ACR_URL" {
  value = module.ACR_module.acr_url
}

output "ACR_ID" {
  value = module.ACR_module.acr_id
}

output "client_id" {
  value = data.azurerm_client_config.current.tenant_id
}*/
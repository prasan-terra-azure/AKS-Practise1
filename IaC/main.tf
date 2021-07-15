terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">2.65.0"
      //aliconfiguration_aliases = ["aks_p1"]
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  //version = "=2.65.0"

  features {}

  client_id       = var.ARM_CLIENT_ID
  client_secret   = var.ARM_CLIENT_SECRET
  subscription_id = var.ARM_SUBSCRIPTION_ID
  tenant_id       = var.ARM_TENANT_ID
}

############### Data source ################
###### AZ subscription #########
data "azurerm_subscription" "aks_p1" {}
###### AZ SP account ##########
/* data "azuread_service_principal" "aks_sp" {
  application_id = var.adsp_id
} */
############### RG Module ##################
module "RG_module" {
  source      = "./RG"
  rg_prefix   = "${var.prefix}-rg"
  rg_location = var.location
}
/*
################ ACR Module ####################
module "ACR_module" {
  source      = "./ACR"
  acr_name    = var.acrname
  rg_name     = module.RG_module.rg_name
  rg_location = module.RG_module.rg_location
  acr_sku     = var.acrsku
  princi_id   = data.azuread_service_principal.aks_sp.id
}*/

####################

//data "azurerm_client_config" "current" {}
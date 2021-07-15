
########### AZ login #################
variable "ARM_SUBSCRIPTION_ID" {}
variable "ARM_CLIENT_ID" {}
variable "ARM_CLIENT_SECRET" {}
variable "ARM_TENANT_ID" {}


###### RG Module ##########
variable "location" {
  default = "eastus"
}
variable "prefix" {
  default = "AKS-P1"
}

/*
################ ACR Module ####################
variable "acrname" {
  default = "AKSP1ACR"
}
variable "acrsku" {
  default = "Basic"
}


################ ADSP Module ################
variable "adsp_id" {
  default = "384ab280-c505-4a5c-8013-895a18dfce0a"
}*/
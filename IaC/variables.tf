
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


################ ACR Module ####################
variable "acrname" {
  default = "AKSP1ACR"
}
variable "acrsku" {
  default = "Basic"
}


################ ADSP Module ################
variable "adsp_id" {
  default = "902eb936-0ed9-479d-86a5-1e9c07c49395"
}


################# AKS Module ###############
variable "aks_cluster_name" {
  default = "Practise1"
}
variable "node_name" {
  default = "prac1"
}
variable "node_cnt" {
  default = 1
}
variable "aks_node_vmsize" {
  default = "Standard_D2_v2"
}
variable "aks_env_tag" {
  default = "Practise1-dev"
}

variable "aks_dns_prefix" {
  default = "Practise1"
}
variable "subscription_id" {
  description = "The Azure subscription ID."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = "acr-CloudDrove-rg"
}

variable "location" {
  description = "The location/region where the resources will be created."
  type        = string
  default     = "eastus"
}

variable "acr_name" {
  description = "The name of the Azure Container Registry."
  type        = string
  default     = "acrCloudDrove1254"
}

variable "acr_sku" {
  description = "The SKU of the Azure Container Registry."
  type        = string
  default     = "Basic"
}

variable "subscription_id" {
  type = string
}

variable "resource_group_name" {
  type = string
  default = "Docker-rg"
}

variable "location" {
  type = string
  default = "eastus"
}

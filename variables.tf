/* Declare Variables */
variable "subscription_id" {
  description = "Subscription ID"
  default     = ""
}
variable "client_id" {
  description = "Web App ID"
  default     = ""
}

variable "client_secret" {
  description = "Key for Service Principal"
  default     = ""
}

variable "tenant_id" {
  description = "Tenant ID"
  default     = ""
}

variable "resource_group_name" {
  type        = string
  description = ""
  default     = "terraform-rg"
}

variable "resource_group_location" {
  type        = string
  description = ""
  default     = "japaneast"
}
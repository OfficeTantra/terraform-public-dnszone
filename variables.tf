variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
  default     = "a3c82269-91d1-4621-8331-71692c379d33" # ot-central

}

variable "resource_group_name" {
  description = "value of the resource group name"
  type        = string
  default     = "ot-public-dns-zone-rg"
}

variable "location" {
  description = "Azure resource location"
  type        = string
  default     = "UK South"

}

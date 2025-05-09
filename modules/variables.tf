variable "location" {
  description = "azure resource location"
  default     = "UK South"
  type        = string
}
variable "resource_group_name" {
  type        = string
  description = "Name of the resource group that contains the DNS zones."
}

variable "zone_name" {
  description = "DNS zone to manage"
}


variable "cname_records" {
  type = list(object({
    name   = string
    ttl    = number
    record = string
  }))

  default = []
}

variable "a_recordsets" {
  type = list(object({
    name   = string
    ttl    = number
    record = list(string)
  }))

  default = []
}



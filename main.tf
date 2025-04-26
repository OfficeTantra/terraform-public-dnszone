
data "local_file" "zones" {
  filename = "./environments/central/zones.yml"
}

resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
}
locals {
  zones = yamldecode(data.local_file.zones.content).zones
}

module "dns_zones" {
  for_each = { for zone in local.zones : zone.name => zone }

  source              = "./modules/"
  cname_records       = each.value.cname
  a_recordsets        = each.value.A
  zone_name           = each.value.name
  resource_group_name = azurerm_resource_group.this.name
}

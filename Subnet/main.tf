resource "azurerm_subnet" "MySub" {
  for_each = var.Sub
  name                 = each.value.name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = ["10.0.2.0/24"]
}


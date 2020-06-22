resource "random_uuid" "main" {
  count = var.name == "" ? 1 : 0
}

resource "azurerm_resource_group" "main" {
  name     = var.name != "" ? var.name : random_uuid.main[0].result
  location = var.location
  tags     = var.tags
}

/* Generate a uuid for name when not specified. */
resource "random_uuid" "main" {
  count = var.name == "" ? 1 : 0
}

/* Assume data when location is not provided. */
data "azurerm_resource_group" "main" {
  count = var.location == "" ? 1 : 0

  name = var.name
}

/* Assume resource when location is provided. */
resource "azurerm_resource_group" "main" {
  count = var.location != "" ? 1 : 0

  name     = var.name != "" ? var.name : random_uuid.main[0].result
  location = var.location
  tags     = var.tags
}

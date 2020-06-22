output "id" {
  description = "The ID of the Resource Group."
  value       = var.location == "" ? data.azurerm_resource_group.main[0].id : azurerm_resource_group.main[0].id
}

output "name" {
  description = "The Name of the Resource Group."
  value       = var.location == "" ? data.azurerm_resource_group.main[0].name : azurerm_resource_group.main[0].name
}

output "location" {
  description = "The Location of the Resource Group."
  value       = var.location == "" ? data.azurerm_resource_group.main[0].location : azurerm_resource_group.main[0].location
}

output "tags" {
  description = "The Tags of the Resource Group."
  value       = var.location == "" ? data.azurerm_resource_group.main[0].tags : azurerm_resource_group.main[0].tags
}

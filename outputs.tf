output "id" {
  description = "The ID of the Resource Group."
  value       = azurerm_resource_group.main.id
}

output "name" {
  description = "The Name of the Resource Group."
  value       = azurerm_resource_group.main.name
}

output "location" {
  description = "The Location of the Resource Group."
  value       = azurerm_resource_group.main.location
}

output "tags" {
  description = "The Tags of the Resource Group."
  value       = azurerm_resource_group.main.tags
}

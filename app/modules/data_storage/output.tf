# Resource Group
output "storage_name_rg" {
    value = azurerm_resource_group.storage.name
}

output "storage_id_rg" {
    value = azurerm_resource_group.storage.id
}

# Containers

## Sensitive
output "sensitive_container_name" {
    value = azurerm_storage_container.sensitive.name
}

output "sensitive_container_id" {
    value = azurerm_storage_container.sensitive.id
}

## Stage
output "stage_container_name" {
    value = azurerm_storage_container.stage.name
}

output "stage_container_id" {
    value = azurerm_storage_container.stage.id
}

## Bronze
output "bronze_container_name" {
    value = azurerm_storage_container.bronze.name
}

output "bronze_container_id" {
    value = azurerm_storage_container.brnze.id
}

## Silver
output "silver_container_name" {
    value = azurerm_storage_container.silver.name
}

output "silver_container_id" {
    value = azurerm_storage_container.silver.id
}

## Gold
output "gold_container_name" {
    value = azurerm_storage_container.gold.name
}

output "gold_container_id" {
    value = azurerm_storage_container.gold.id
}
resource "random_integer" "suffix" {
  min = 10000000
  max = 99999999
}

resource "random_string" "posfix" {
  length = 4
  lower  = true
}

data "azurerm_client_config" "current" {}

# Resource Group
resource "azurerm_resource_group" "ds_workspace_aml"{
    name = "${var.env}-${var.company}-aml-station"
    location = var.location
}

# Application Insights
resource "azurerm_application_insights" "aml_ai" {
    name                = "${var.env}-${var.company}-${random_integer.suffix.result}"
    location            = azurerm_resource_group.ds_workspace_aml.location
    resource_group_name = azurerm_resource_group.ds_workspace_aml.name
    application_type    = "web"
}

# Key Vault
resource "azurerm_key_vault" "aml_kv" {
    name                = "${var.env}-${var.company}-kv-${random_integer.suffix.result}"
    location            = azurerm_resource_group.ds_workspace_aml.location
    resource_group_name = azurerm_resource_group.ds_workspace_aml.name
    tenant_id           = data.azurerm_client_config.current.tenant_id
    sku_name            = "standard"
}

# Storage: Account & Containers
resource "azurerm_storage_account" "aml_storage"{
name = "${var.company}modelsws"
resource_group_name = azurerm_resource_group.ds_workspace_aml.name
location = var.location
account_tier = "Standard"
account_replication_type = "LRS"  # Replace with "ZRS", "GRS", "RA-GRS", "GZRS", or "RA-GZRS" as needed

# Enable the hierarchical namespace (required for ADLS Gen2)
is_hns_enabled = true
}

# Container Registry
resource "azurerm_container_registry" "aml_acr" {
    name                     = "${var.env}acr${random_string.posfix.result}"
    resource_group_name      = azurerm_resource_group.ds_workspace_aml.name
    location                 = azurerm_resource_group.ds_workspace_aml.location
    sku                      = "Standard"
    admin_enabled            = true
}

# ML Workspace
resource "azurerm_machine_learning_workspace" "aml_ws" {
    name                    = "${var.env}-${var.company}-ws-${random_string.posfix.result}"
    friendly_name           = "${var.env}-${var.company}-ws-models"
    location                = azurerm_resource_group.ds_workspace_aml.location
    resource_group_name     = azurerm_resource_group.ds_workspace_aml.name
    application_insights_id = azurerm_application_insights.aml_ai.id
    key_vault_id            = azurerm_key_vault.aml_kv.id
    storage_account_id      = azurerm_storage_account.aml_storage.id
    container_registry_id   = azurerm_container_registry.aml_acr.id

    identity {
        type = "SystemAssigned"
    }
}
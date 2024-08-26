# Resource Group
resource "azurerm_resource_group" "ds_workspace_aml"{
    name = "${var.env}-${var.company_name}-aml-station"
    location = var.location
}

# Key Vault
resource "azurerm_key_vault" "aml_kv" {
  name                = "${var.env}-${var.company_name}-kv-${random_string.postfix.result}"
  location            = azurerm_resource_group.aml_rg.location
  resource_group_name = azurerm_resource_group.aml_rg.name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "standard"
}

# Application Insights
resource "azurerm_application_insights" "aml_ai" {
    name                = "${var.env}-${var.company_name}-${random_string.postfix.result}"
    location            = azurerm_resource_group.ds_workspace_aml.location
    resource_group_name = azurerm_resource_group.ds_workspace_aml.name
    application_type    = "web"
}

# Storage: Account & Containers

# Container Registry
resource "azurerm_container_registry" "aml_acr" {
    name                     = "${var.env}-acr-${random_string.postfix.result}"
    resource_group_name      = azurerm_resource_group.ds_workspace_aml.name
    location                 = azurerm_resource_group.ds_workspace_aml.location
    sku                      = "Standard"
    admin_enabled            = true
}

# ML Workspace

# Compute Resource
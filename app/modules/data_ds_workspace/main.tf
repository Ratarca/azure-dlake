# Resource Group
resource "azurerm_resource_group" "ds_workspace_aml"{
    name = "${var.env}-${var.company_name}-aml-station"
    location = var.location
}

# Application Insights
resource "azurerm_application_insights" "aml_ai" {
    name                = "${var.env}-${var.company_name}-${random_string.postfix.result}"
    location            = azurerm_resource_group.ds_workspace_aml.location
    resource_group_name = azurerm_resource_group.ds_workspace_aml.name
    application_type    = "web"
}

# Key Vault
resource "azurerm_key_vault" "aml_kv" {
    name                = "${var.env}-${var.company_name}-kv-${random_string.postfix.result}"
    location            = azurerm_resource_group.ds_workspace_aml.location
    resource_group_name = azurerm_resource_group.ds_workspace_aml.name
    tenant_id           = data.azurerm_client_config.current.tenant_id
    sku_name            = "standard"
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
resource "azurerm_machine_learning_workspace" "aml_ws" {
    name                    = "${var.env}-${var.company_name}-ws-${random_string.postfix.result}"
    friendly_name           = 0 #var.workspace_display_name
    location                = azurerm_resource_group.ds_workspace_aml.location
    resource_group_name     = azurerm_resource_group.ds_workspace_aml.name
    application_insights_id = azurerm_application_insights.aml_ai.id
    key_vault_id            = azurerm_key_vault.aml_kv.id
    storage_account_id      = 0 #azurerm_storage_account.aml_sa.id
    container_registry_id   = azurerm_container_registry.aml_acr.id

    identity {
        type = "SystemAssigned"
    }
}

resource "null_resource" "compute_resouces"{
    provisioner "local-exec" {
    command="az ml computetarget create amlcompute --max-nodes 1 --min-nodes 0 --name cpu-cluster --vm-size Standard_DS3_v2 --idle-seconds-before-scaledown 600 --assign-identity [system] --resource-group ${azurerm_machine_learning_workspace.aml_ws.resource_group_name} --workspace-name ${azurerm_machine_learning_workspace.aml_ws.name}"
}

    provisioner "local-exec" {
    command="az ml computetarget create computeinstance --name ci-${random_string.postfix.result}-test --vm-size Standard_DS3_v2 --resource-group ${azurerm_machine_learning_workspace.aml_ws.resource_group_name} --workspace-name ${azurerm_machine_learning_workspace.aml_ws.name}"
}
}
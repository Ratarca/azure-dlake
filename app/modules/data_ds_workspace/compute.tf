resource "random_string" "ci_prefix" {
  length  = 8
  upper   = false
  special = false
  numeric = false
}

# Compute instance
resource "azurerm_machine_learning_compute_instance" "ml_computing_main" {
  name                          = "${random_string.ci_prefix.result}instance"
  machine_learning_workspace_id = azurerm_machine_learning_workspace.aml_ws.id
  virtual_machine_size          = "STANDARD_DS2_V2"
  # authorization_type
  # subnet_resource_id --> need azurerm_virtual_network + azurerm_subnet
  # ssh
}

# Compute Cluster
resource "azurerm_machine_learning_compute_cluster" "ml_computing_cluster" {
  name                          = "cpu-cluster"
  location                      = var.location
  machine_learning_workspace_id = azurerm_machine_learning_workspace.aml_ws.id
  vm_priority                   = "LowPriority"
  vm_size                       = "STANDARD_DS2_V2"
  # subnet_resource_id

  identity {
    type = "SystemAssigned"
  }

  scale_settings {
    min_node_count                       = 0
    max_node_count                       = 1
    scale_down_nodes_after_idle_duration = "PT15M" # 15 minutes
  }

}
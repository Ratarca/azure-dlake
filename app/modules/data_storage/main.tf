# Resource Group
resource "azurerm_resource_group" "storage" {
name = "${var.company}-${var.env}-dlake-storage"
location = var.location
tags = var.tags
}

# Storage Account
resource "azurerm_storage_account" "data_plataform_dlake_storage"{
name = "${var.company}-${var.env}-dlake"
resource_group_name = azurerm_resource_group.storage.name
location = var.location
account_tier = var.account_tier
account_replication_type = "LRS"  # Replace with "ZRS", "GRS", "RA-GRS", "GZRS", or "RA-GZRS" as needed
account_kind = "StorageV2"

# Enable the hierarchical namespace (required for ADLS Gen2)
is_hns_enabled = true
}


# Containers : sensitive, stage, bronze, silver and gold
resource "azurerm_storage_container" "sensitive"{
    name = "${var.company}-${var.env}-dlake-sensitive"
    storage_account_name = azurerm_storage_account.data_plataform_dlake_storage.name
    container_access_type = "private"
}

resource "azurerm_storage_container" "stage"{
    name = "${var.company}-${var.env}-dlake-stage"
    storage_account_name = azurerm_storage_account.data_plataform_dlake_storage.name
    container_access_type = "private"
}

resource "azurerm_storage_container" "bronze"{
    name = "${var.company}-${var.env}-dlake-bronze"
    storage_account_name = azurerm_storage_account.data_plataform_dlake_storage.name
    container_access_type = "private"
}

resource "azurerm_storage_container" "silver"{
    name = "${var.company}-${var.env}-dlake-silver"
    storage_account_name = azurerm_storage_account.data_plataform_dlake_storage.name
    container_access_type = "private"
}

resource "azurerm_storage_container" "gold"{
    name = "${var.company}-${var.env}-dlake-gold"
    storage_account_name = azurerm_storage_account.data_plataform_dlake_storage.name
    container_access_type = "private"
}
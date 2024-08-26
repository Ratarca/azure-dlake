provider "azurerm" {
    features {}
}

terraform {
    required_version = ">= 1.5.7"
    backend "azurerm"{
        resource_group_name = "value"
        storage_account_name = "value"
        container_name = "value"
        key = "value"
        tenant_id = "value"
        subscription_id = "value"
    }
}

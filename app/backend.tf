terraform {
    required_version = ">= 1.1.7"
    backend "azurerm" {
        resource_group_name  = "dptfstates"
        storage_account_name = "dptfdevops"
        container_name       = "tfstates-dp"
        key                  = "terraform.tfstate"
    }
}
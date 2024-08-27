provider "azurerm" {
    features {}
}

# Set the Azure Provider source and version being used
terraform {
    required_version = ">= 1.5.7"
    required_providers {
        azurerm = {
        source  = "hashicorp/azurerm"
        version = "~> 3.1.0"
        }
    }
}
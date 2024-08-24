provider "azurerm"{
    features {}
    alias = "${var.env}-dataplataform"
    subscription_id = "${var.env}-dataplataform-backbone"
}
 

# Management Groups
resource "azurerm_management_group" "data_company"{
display_name = var.data_company_name
name = var.data_company_id
}

resource "azurerm_management_group" "it_data_plataform"{
    display_name = "${var.prefix}_DataPlataform"
    name = "${var.prefix}_data_plataform"
    parent_management_group_id = azurerm_management_group.data_company.id
}


resource "azurerm_management_group_subscription_association" "it_data_plataform_subscription"{
    management_group_id = azurerm_management_group.it_data_plataform.id
    subscription_id = "${var.prefix}-${var.subscription_it_data_plataform_id}"
}

# Subscriptions and Policies


# Resources Groups : data_sre, shared, basic, data_engineer, data_science
resource "azurerm_resource_group" "data_sre"{
    name = "${var.prefix}-data-sre-rg"
    location = var.location
    tags = var.tags
}

resource "azurerm_resource_group" "shared"{
    name = "${var.prefix}-shared-rg"
    location = var.location
}

resource "azurerm_resource_group" "basic"{
    name = "${var.prefix}-basic-rg"
    location = var.location
}

resource "azurerm_resource_group" "data_engineer"{
    name = "${var.prefix}-data-engineer-rg"
    location = var.location
}

resource "azurerm_resource_group" "data_science"{
    name = "${var.prefix}-data-science-rg"
    location = var.location
}
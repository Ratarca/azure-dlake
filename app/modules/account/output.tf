output "management_group_id"{
    description = ""
    value = azurerm_management_group.data_company.id
}

output ""{
    description = ""
    value = 0
}

output "resource_group_names"{
    description = "The names of the created resource groups"
    value = [
        azurerm_resource_group.data_sre.name,
        azurerm_resource_group.shared.name,
        azurerm_resource_group.basic.name,
        azurerm_resource_group.data_sre.name,
        azurerm_management_group.data_engineer.name,
        azurerm_management_group.data_science.name
    ]

}
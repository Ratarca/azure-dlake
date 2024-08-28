# Azure Management Group and Resource Groups Module

This module used to build scope definitions it is necessary to define domains and services we will build.
- A parent management group named "DataCompany"
- A child management group named "ItDataPlatform"
- A subscription called "developer" associated with the "ItDataPlatform" management group
- Resource groups under the developer subscription: `shared`, `data_engineer`, `analytics`, `sre`, and `dataviz`.

## Logic

- Set the provider and their subscriptions
- Create management-group
- Create 

## Usage

```hcl
module "azure_management_structure" {
  source = "./azure-management-structure"

  data_company_name       = "DataCompany"
  data_company_id         = "data_company"
  it_data_platform_name   = "ItDataPlatform"
  it_data_platform_id     = "it_data_platform"
  developer_subscription_id = "your-subscription-id"
  location                = "East US"
  prefix                  = "dev"
  tags = {
    Environment = "Development"
    Project     = "DataPlatform"
  }
}
```

---

# [Home :house:](https://github.com/Ratarca/azure-dlake)
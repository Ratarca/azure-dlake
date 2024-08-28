# azure-dlake
Data Plataform built on Azure provider.


## Architecture
Below we have a big picture about data platform. 
In this case we use a Delta Lake where backbone services deployed on azure and our processing data engine is a databricks data platform.

<img src="docs/asset/img/dlake-v2.png" width="650" height="450"/>


## Modules

- data_storage: Account storage services.
- data_de_adb : The data engineer's azure databricks services.
- data_de_adf : Data engineer's azure data factory.
- data_ds_labs: Data science's machine learning workspace.
- data_sre_backbone : Scope, groups and RBAC.


## Roadmap

| Feature    | Description                                 | Status |
| ---------- | ------------------------------------------- | ------ |
| Services   | Infra to build a data plataform             | 0      |
| Operations | Operations to execute routines on plataform | 0      |
| DataOps    | CICD to deploy pipelines on databricks      | 0      |
| MLOps      | CICD to deploy machine learning models      | 0      |


----

## Deploy

Instructions to deploy services

## Reference

- Architecture
    - [Lake house](https://learn.microsoft.com/pt-br/azure/databricks/lakehouse/)
    - [Data Mesh](https://www.datamesh-architecture.com/#mesh)
- Azure
    - [RBAC](https://learn.microsoft.com/en-us/azure/role-based-access-control/overview)
    - [Network](https://learn.microsoft.com/en-us/azure/networking/fundamentals/networking-overview)
    - [Azure Lighthouse](https://learn.microsoft.com/en-us/azure/lighthouse/overview)
    - [Blob Storage](https://learn.microsoft.com/en-us/azure/storage/blobs/storage-blobs-introduction)
    - [Data Factory](https://learn.microsoft.com/en-us/azure/data-factory/introduction)
    - [Event Hub](https://learn.microsoft.com/en-us/azure/event-hubs/event-hubs-features)
- Terraform
    - [How to setup the azure backend](https://developer.hashicorp.com/terraform/language/settings/backends/azurerm)
    - [Workflow git actions TF V3](https://github.com/hashicorp/setup-terraform/tree/v3/)
- GitActions
    - [Workflow on github actions](https://github.com/hashicorp/setup-terraform)
- Databricks Unity Catalog
    - [Unity Setup](https://docs.databricks.com/en/data-governance/unity-catalog/get-started.html)
    - [Unity Catalog best practices](https://learn.microsoft.com/en-us/azure/databricks/data-governance/unity-catalog/best-practices)
    - [Unity Catalog : Playlist dados em acao](https://www.youtube.com/watch?v=koylfcfRrJU&t=3s)
    - [Unity Project](https://github.com/unitycatalog/unitycatalog)

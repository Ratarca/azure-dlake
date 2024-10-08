# azure-dlake
Data Plataform built on Azure provider with these modules.

<img src="docs/asset/img/azure-dlake.gif" width="650" height="450"/>

# Architecture
Below we have a big picture about data platform. <br>
In this case we use a Delta Lake where backbone services deployed on azure and our processing data engine is a databricks.  <br>
Inside each module folder you will find deep analysis with IaC outputs and descriptions.

<img src="docs/asset/img/0-bigpicture.png" width="650" height="450"/>

## Modules

- [data_sre_backbone](https://github.com/Ratarca/azure-dlake/tree/main/app/modules/data_sre_backbone): Scope, groups and RBAC. "Maybe i`ll write this on bicep because it has better integration than terraform"
- [data_storage](https://github.com/Ratarca/azure-dlake/tree/main/app/modules/data_storage): Account storage services.
- [data_ds_workspace](https://github.com/Ratarca/azure-dlake/tree/main/app/modules/data_ds_workspace): Data science's machine learning workspace.
- [data_de_adb](https://github.com/Ratarca/azure-dlake/tree/main/app/modules/data_de_adb) : The data engineer's azure databricks services like workspace and unity catalog.


## Roadmap

| Feature    | Description                                 | Status              |
| ---------- | ------------------------------------------- | ------------------- |
| Operations | CICD to deploy on azure                     | :full_moon:         |
| Services   | Infra: Backbone Scope                       | :new_moon:          |
| Services   | Infra: Storage                              | :full_moon:         |
| Services   | Infra: ML Workspace                         | :full_moon:         |
| Services   | Infra: Databrick                            | :last_quarter_moon: |
| Operations | Operations to execute routines on plataform | :new_moon:          |


----

## Deploy

Instructions to deploy services

```hcl

ADD INSTRUCTIONS HERE...

```

## Reference

- Architecture
    - [Lake house](https://learn.microsoft.com/pt-br/azure/databricks/lakehouse/)
    - [Data Mesh](https://www.datamesh-architecture.com/#mesh)
    - [Data Mesh by Martin](https://martinfowler.com/articles/data-mesh-principles.html)

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
- Good Practices
    - [Data Factory Operations with one Linked Service](https://medium.com/plumbersofdatascience/azure-data-factory-connect-to-multiple-resources-with-one-linked-service-47310423aba6)
    - [Data Factory CI-CD](https://learn.microsoft.com/en-us/azure/data-factory/continuous-integration-delivery)
    - [Guide to implement Data Factory](https://mrpaulandrew.com/2019/12/18/best-practices-for-implementing-azure-data-factory/)

# Related Projects
DataOps: Using CICD to deploy databricks workflows
MLOps: A ecosystem to create, maintain and distribute ML models.
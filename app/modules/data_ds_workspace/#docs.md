# Module

Use this module to setup a simple azure machine learning 'AML' workspace.
There are a awesome environment to build your machine learning models.


The machine learning workspace allow us to full cyle on MLOps with prepare data, train model, deploy, monitoring and more...

<img src="/docs/asset/img/datascience-lab.png" width="650" height="450"/>

## Usage

```HCL

module "ds_workstation"{

}

```

## Improvements
We can add a VNet with private link to another people acess and use firewall.

---

## References
- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/machine_learning_workspace.html
- https://learn.microsoft.com/en-us/azure/machine-learning/quickstart-create-resources?view=azureml-api-2
- https://learn.microsoft.com/en-us/azure/machine-learning/tutorial-explore-data?view=azureml-api-2
- https://learn.microsoft.com/en-us/azure/machine-learning/concept-model-management-and-deployment?view=azureml-api-2
- https://learn.microsoft.com/en-us/azure/machine-learning/concept-component?view=azureml-api-2
- [Example Usage with User Assigned Identity and Data Encryption](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/machine_learning_workspace#example-usage-with-user-assigned-identity-and-data-encryption)
---

# [Home :house:](https://github.com/Ratarca/azure-dlake)
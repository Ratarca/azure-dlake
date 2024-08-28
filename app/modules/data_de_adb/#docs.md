# Databricks


# About Setup logic

- Databricks End-to-End
- Databricks Unity Catalog
- Standard : Resources dont required admin privileges like 

# Unity Catalog Deploy

<img src="/docs/asset/img/7-ML_Workspace.png" width="650" height="450"/>

## Steps to Deploy
- 01: Deploy Azure databricks managed identity connector to be used by the metastore to access its root storage.  
- 02: Deploy ADLS Gen2 storage account to be used by the metastore as root storage.
- 03: Deploy the unity catalog metastore.
- 04: Attached the existing databricks workspace to metastore to enable unity catalog for the workspace.
- 05: Sync AAD groups to Databricks account. For this steps groups (and their member users, service principals) should have already been created beforehand in AAD.
    - Note that in our example account_unity_admin group becomes the metastore admin, workspace admin and owner of all unity catalog objects (catalog, storage cred, external location and schemas).  
    - account_unity_admin also becomes Databricks account admin.  
    - Therefore, the user or principal running this example template should be a member of account_unity_admin group to successfully deploy all resources.  
- 06: Sync user groups from account to workspace, this is also called identity federation.
- 07: Deploy a storage credential (encapsulating managed identity created in step1) to be used to create an external location
- 08: Create a separate storage container to be used by dev_catalog as root storage for its managed tables
- 09: Deploy an external location pointing to the container in step8.
- 10: Deploy dev_catalog for dev environment, 3 schemas (for bronze, silver and gold layers) and grant different groups different set of permissions on catalog and schemas.


---

# Reference
- [Terraform and workspaces](https://registry.terraform.io/providers/databricks/databricks/latest/docs/guides/workspace-management)
- [Official samples databricks](https://github.com/databricks/terraform-databricks-examples)

---

# [Home :house:](https://github.com/Ratarca/azure-dlake)
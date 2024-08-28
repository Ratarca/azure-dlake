
# Module
Use this module to setup a storage services.<br>

Here we create a resource_group storage with storage_account and 5 containers.
These containers are : Sensitive, stage, bronze, silver and gold.

<img src="/docs/asset/img/module-storage-output-v2.png" width="500" height="450"/>

# Usage

```hcl

module "XPTO_STORAGE"{
    company = "CompanyName"
    env = "DEV|PRD"
}
```

### Notes about replication storage
- LRS: Protects against local hardware failures.
- ZRS: Protects against data center failures within the same region.
- GRS: Protects against regional outages by replicating to a secondary region.
- RA-GRS: Provides read access to the secondary region.
- GZRS: Combines ZRS and GRS for high availability and disaster recovery.
- RA-GZRS: Offers the highest level of redundancy with read access to the secondary region.

---

# [Home](https://github.com/Ratarca/azure-dlake/tree/main)
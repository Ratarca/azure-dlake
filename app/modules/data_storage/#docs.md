
# Module
Use this module to setup a storage services.

# Usage

```hcl

module "XPTO_STORAGE"{
    company = 0
    env = 0
}

```

### Notes about replication storage
- LRS: Protects against local hardware failures.
- ZRS: Protects against data center failures within the same region.
- GRS: Protects against regional outages by replicating to a secondary region.
- RA-GRS: Provides read access to the secondary region.
- GZRS: Combines ZRS and GRS for high availability and disaster recovery.
- RA-GZRS: Offers the highest level of redundancy with read access to the secondary region.
module "dlake_storage"{
    source = "./modules/data_storage"
    env = "dev"
    company = "wonka"
}

module "dlake_ml_workspace"{
    source = "./modules/data_ds_workspace"
    env = "dev"
    company = "wonka"

    # Add this to build on sequence the principal resources
    depends_on = [ module.dlake_storage ]
}
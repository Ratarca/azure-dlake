module "dlake_storage"{
    source = "./modules/data_storage"
    env = "dev"
    company = "wonka"
}
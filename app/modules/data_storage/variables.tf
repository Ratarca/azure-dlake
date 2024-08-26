## Backbone config
variable "company" {
    description = "The company name it used like a prefix"
    type = string
    default = "wonka"
}

variable "env" {
    description = "The environment to deploy services, in complex cases we need use account id to split envs right"
    type = string
    default = "dev"
}

variable "location" {
    description = "Azure location service"
    type = string
    default = "West US"
}

## Backbone config
variable "account_tier" {
    description = "Account tier impact on service price"
    type = string
    default = "Standard"
}

variable "tags" {
    description = "Tags to tracking the project"
    type = map(string)
    default = {
        owner = "data-plataform"
        service = "storage"
        project = "dlake-azure"
        creator = "RATARCA"
    }
}


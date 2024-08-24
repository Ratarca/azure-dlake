## Backbone config
variable "company" {
    description = "value"
    type = string
    default = "wonka"
}

variable "env" {
    description = "value"
    type = string
    default = "dev"
}

variable "location" {
    description = "value"
    type = string
    default = "West US"
}

## Backbone config
variable "account_tier" {
    description = "value"
    type = string
    default = "Standard"
}

variable "tags" {
    description = "value"
    type = map(string)
    default = {
        owner = "data-plataform"
        service = "storage"
        project = "dlake-azure"
        creator = "RATARCA"
    }
}


# Environment
variable "env"{
    description = "The environment"
    type = string
    default = "dev"
}
variable "prefix"{
    description = "value"
    type = string
    default = "dev"
}

variable "location"{
    description = "value"
    type = string
    default = "East US"
}

variable "tags"{
    description = "value"
    type = map(string)
    default = {
                Project = "Data-Plataform"
                }
}

# Services
variable "data_company_name"{
    description = "The display name for the parent management group"
    type = string
    default = "DataCompany"
}

variable "data_company_id"{
    description = "The unique id for management group"
    type = string
    default = "data_company"
}

variable "subscription_it_data_plataform_id"{
    description = "The unique id for the subscription"
    type = string
    default = "subs_data_plataform"
}



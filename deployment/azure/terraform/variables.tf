variable "application_sp_object_id" {
  description = "object id of application's service principal object"
}

variable "res_prefix" {
  default     = "test"
  description = "prefix for Azure resources to avoid resource duplication. Should be randomized"
}

variable "application_sp_client_id" {
  description = "client id of application's service principal object"
}

variable "application_sp_client_secret" {
  description = "client secret of the application"
}

variable "participants" {
  default = [
    {
      "name" : "controltower"
      "country" : "FR"
      "region" : "eu"
    },
    {
      "name" : "bridge"
      "country" : "DE"
      "region" : "eu"
    },
    {
      "name" : "airplane"
      "country" : "US"
      "region" : "us"
    }
  ]
}
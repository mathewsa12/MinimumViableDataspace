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
      "name" : "service"
      "country" : "FR"
      "region" : "eu"
    },
    {
      "name" : "versicherung"
      "country" : "DE"
      "region" : "eu"
    },
    {
      "name" : "flughafen"
      "country" : "US"
      "region" : "us"
    }
  ]
}
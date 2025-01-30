// https://developer.hashicorp.com/terraform/language/values/variables
variable "region"{
    default = "us-east-1"
    type = string
    description = "aws region"
}

variable "RESOURCE_TAGS" {
  default = {
    "project":"cricket"
    "env":""
  }
  type = map(string)
}
variable "ENVIROMENTS" {
    default = ["asiacup","icc-ct","icc-wc"]
     type = list(string)
}

provider "aws" {
  region = "todo"
}

local{

    security_groups = data.terraform_remote_state.env-state.outputs.webserver_sg

}
variable "name" {
  default = "database-1"
}

variable "key_name" {
  default ="Server Access Key"
}
variable "instance_class" {
  default = "tbd"
}
variable "parameter_group_name" {
  default = "tbd"
}

variable "username" {
  default = "tbd"
}

variable "password" {
  default = "tbd"
}

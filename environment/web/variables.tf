provider "aws" {
  region = "todo"
}

local{

    security_groups = data.terraform_remote_state.env-state.outputs.webserver_sg

}
variable "name" {
  default = "webserver-1"
}

variable "key_name" {
  default ="Server Access Key"
}
variable "instance_type" {
  default = "m5.large"
}

variable "ami" {
  default = "ami-0130c3a072f3832ff"
}

variable "instance_role" {
  default = "tbd"
}
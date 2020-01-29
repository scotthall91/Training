variable "instance_type" {
    description = "EC2 type"
}

variable "security_group_ids" {
}

variable "key_name" {
  description ="Server Access Key"
}

variable "subnet_ip" {
  
}

variable "ami" {
  description = "Will be linux based"
}

variable "availibilty_zone" {
  
}

variable "user_data" {
  default = ""
}

variable "instance_role" {
  
}

variable "volume_size" {
  default = 50
}

variable "private_ip" {
  default =  ""
}

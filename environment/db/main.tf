terraform{
    backend "s3" {
        bucket   = "database-state"
        key      = "terraform.tfstate.database-1"
        dynamodb_table = "database-lock"
        region   = "todo"
        encrypt  = true
    }
}

#webserver-1
module "database-1" {
  source              = "../modules/db"
  name                   = var.name
  instance_class         = var.instance_class
  engine                 = var.engine
  engine_version         = var.engine_version
  availability_zone      = var.availability_zone
  vpc_security_group_ids = var.security_groups
  storage_type           = var.storage_type
  allocated_storage      = var.allocated_storage
  parameter_group_name   = var.parameter_group_name

  username        = var.username
  password        = var.password
  
}

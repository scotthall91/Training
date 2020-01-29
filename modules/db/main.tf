#RDS Instance

resource "aws_db_insance" "rds-database" {
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

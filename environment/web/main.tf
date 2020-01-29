terraform{
    backend "s3" {
        bucket   = "webserver-state"
        key      = "terraform.tfstate.webserver-1"
        dynamodb_table = "webserver-lock"
        region   = "todo"
        encrypt  = true
    }
}

#webserver-1
module "webserver-1" {
  source              = "../modules/server"
  instance_role       = local.instance_role
  ami                 = local.ami_id
  instance_type       = var.instance_type
  availibilty_zone    = local.availibilty_zone
  vpc_security_group_ids = local.webserver_sg
  key_name            = var.key_name
  subnet_id           = local.subnet_id
  
}
resource "aws_ebs_volume" "mount" {
  availability_zone = local.availibilty_zone
  size              = "50"
  type              = "gp2"
}

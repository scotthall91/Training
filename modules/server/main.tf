#Standard Server Module

resource "aws_instance" "standard-server" {
  ami                    = var.ami
  instance_type          = var.instance_type
  iam_instance_profile   = var.iam_instance_profile
  availability_zone      = var.availability_zone
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  volume_tags            = var.volume_tags

  root_block_device {
      volume_size        = var.volume_size
      volume_type        = "gp2"
      delete_on_termination = true
  }
  private_ip             = var.private_ip
}

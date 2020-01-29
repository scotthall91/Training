#Webserver SG

resource "aws_security_group" "webserver_sg" {
    name   = "webserver_sg"
    description = "web traffic over 80 and 443"
    vpc_id      = var.vpc_id
  
}

#webserver rules
resource "aws_Security_group_rules" "access_80" {
  type      = "ingress"
  from_port = 80
  to_port   = 80
  protocol  = "tcp"
  cidr_blocks = "0.0.0.0/0"
  security_group_id = aws_security_group.webserver_sg.id
}
resource "aws_Security_group_rules" "access_80" {
  type      = "ingress"
  from_port = 443
  to_port   = 443
  protocol  = "tcp"
  cidr_blocks = "0.0.0.0/0"
  security_group_id = aws_security_group.webserver_sg.id
}


#Database Security Group
resource "aws_db_security_group" "rds_sg" {
    name   = "rds_sg"
    description = "port 5433 to webserver sg"
    vpc_id      = var.vpc_id

    ingress{
        security_group_name = "webserver_sg"
    }
  
}
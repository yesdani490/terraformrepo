resource "aws_security_group" "allow_all-Http-https-ssh" {
  name        = "allow_all-Http-https-ssh"
  description = "Allow all inbound traffic"
 

  ingress {
    description      = "all traffic allowing, all means all"
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.sg_cidr
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.sg_cidr
  }
}
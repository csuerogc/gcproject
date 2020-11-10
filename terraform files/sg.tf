# required vpc_id
# get sg.ids

resource "aws_security_group" "SG_HTTP" {
  name        = "sg_http_policies"
  description = "Policies Guardicore Project "
  vpc_id      = "vpc-0a9cf85cd1852feaf"

  ingress {
    description = "HTTP from Ubuntu"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["13.53.43.248/32", "190.239.77.173/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "HTTP_Policy"
  }
}


resource "aws_security_group" "SG_SSH" {
  name        = "sg_ssh_policies"
  description = "Policies Guardicore Project "
  vpc_id      = "vpc-0a9cf85cd1852feaf"

  ingress {
    description = "SSH from Ubuntu"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["13.53.43.248/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "SSH_Policy"
  }
}

resource "aws_security_group" "SG_LAN_ANY" {
  name        = "sg_lan_policies"
  description = "Policies Guardicore Project "
  vpc_id      = "vpc-0a9cf85cd1852feaf"

  ingress {
    description = "LAN Traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["192.168.0.0/24"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "LAN_Policy"
  }
}

####
# aws_security_group.SG_SSH: Creation complete after 2s [id=sg-0b001a3bd1fd350e2]
# aws_security_group.SG_LAN_ANY: Creation complete after 2s [id=sg-01b3cacf911c90cb9]
# aws_security_group.SG_HTTP: Creation complete after 2s [id=sg-0c5fb5caa549b32e4]
###
# default: sg-082daab8babe3e8eb
###

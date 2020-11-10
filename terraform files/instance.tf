# required subnet.id
# required sg.ids
# get instance.id

resource "aws_instance" "LB" {
  ami           = "ami-0fa4be6691d42a5e1"
  instance_type = "t2.micro"
  vpc_security_group_ids      = ["sg-0b001a3bd1fd350e2", "sg-01b3cacf911c90cb9", "sg-0c5fb5caa549b32e4", "sg-082daab8babe3e8eb"]
  subnet_id = "subnet-07f61e7a5fe138e53"
  associate_public_ip_address = "true"
  private_ip     = "192.168.0.11"
  availability_zone = "eu-west-3a"
  key_name = "kp_pem"

  tags = {
    Name = "LB"
  }
}

resource "aws_instance" "WEB" {
  ami           = "ami-0fa4be6691d42a5e1"
  instance_type = "t2.micro"
  vpc_security_group_ids      = ["sg-0b001a3bd1fd350e2", "sg-01b3cacf911c90cb9", "sg-082daab8babe3e8eb"]
  subnet_id = "subnet-07f61e7a5fe138e53"
  associate_public_ip_address = "true"
  private_ip     = "192.168.0.12"
  availability_zone = "eu-west-3a"
  key_name = "kp_pem"

  tags = {
    Name = "WEB"
  }
}

resource "aws_instance" "DB" {
  ami           = "ami-0fa4be6691d42a5e1"
  instance_type = "t2.micro"
  vpc_security_group_ids      = ["sg-0b001a3bd1fd350e2", "sg-01b3cacf911c90cb9", "sg-082daab8babe3e8eb"]
  subnet_id = "subnet-07f61e7a5fe138e53"
  associate_public_ip_address = "true"
  private_ip     = "192.168.0.13"
  availability_zone = "eu-west-3a"
  key_name = "kp_pem"

  tags = {
    Name = "DB"
  }
}

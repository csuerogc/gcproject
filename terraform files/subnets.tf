# required vpc_id
# get subnet.id

resource "aws_subnet" "Subnets_Servers" {
  vpc_id            = "vpc-0a9cf85cd1852feaf"
  cidr_block        = "192.168.0.0/24"
  availability_zone = "eu-west-3a"

  tags = {
    Name = "GC Project - Subnets"
  }
}


### id=subnet-07f61e7a5fe138e53

# required vpc_id
# get gw.id

resource "aws_internet_gateway" "igateway" {
  vpc_id = "vpc-0a9cf85cd1852feaf"

  tags = {
    Name = "GC Project - Internet Gateway"
  }
}


### id=igw-0568b66f89e77ad30

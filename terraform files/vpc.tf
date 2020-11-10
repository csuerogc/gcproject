# get vpc.id

resource "aws_vpc" "gc_vpc" {
  cidr_block = "192.168.0.0/20"

  tags = {
    Name = "GC Project - VPC"
  }
}


### vpc_id = vpc-0a9cf85cd1852feaf

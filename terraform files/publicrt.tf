resource "aws_route_table" "public-rt" {
  vpc_id = "vpc-0a9cf85cd1852feaf"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0568b66f89e77ad30"
  }

  tags = {
    Name = "GC Project - Route Table"
  }
}

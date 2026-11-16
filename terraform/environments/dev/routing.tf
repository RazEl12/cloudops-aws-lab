resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name        = "cloudops-dev-public-rt"
    Environment = "dev"
    Project     = "cloudops-aws-lab"
  }
}

resource "aws_route_table_association" "public_a" {
  subnet_id      = aws_subnet.public_a.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public_b" {
  subnet_id      = aws_subnet.public_b.id
  route_table_id = aws_route_table.public.id
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name        = "cloudops-dev-igw"
    Environment = "dev"
    Project     = "cloudops-aws-lab"
  }
}
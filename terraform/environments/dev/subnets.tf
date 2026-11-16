resource "aws_subnet" "public_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.20.1.0/24"
  availability_zone = "eu-north-1a"
  tags = {
    Name        = "cloudops-dev-public-a"
    Environment = "dev"
    Project     = "cloudops-aws-lab"
  }
}

resource "aws_subnet" "public_b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.20.2.0/24"
  availability_zone = "eu-north-1b"
  tags = {
    Name        = "cloudops-dev-public-b"
    Environment = "dev"
    Project     = "cloudops-aws-lab"
  }
}

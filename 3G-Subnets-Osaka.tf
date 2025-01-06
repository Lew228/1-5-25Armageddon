resource "aws_subnet" "osaka_subnet_public_1a" {
  provider          = aws.osaka
  vpc_id            = aws_vpc.osaka_vpc.id
  cidr_block        = "10.53.1.0/24"
  availability_zone = "ap-northeast-3a"

  tags = {
    Name = "Osaka Subnet public 1a"
  }
}
resource "aws_subnet" "osaka_subnet_private_1b" {
  provider          = aws.osaka
  vpc_id            = aws_vpc.osaka_vpc.id
  cidr_block        = "10.53.11.0/24"
  availability_zone = "ap-northeast-3b"

  tags = {
    Name = "Osaka Subnet private 1b"
  }
}

resource "aws_subnet" "osaka_subnet_private_1c" {
  provider          = aws.osaka
  vpc_id            = aws_vpc.osaka_vpc.id
  cidr_block        = "10.53.13.0/24"
  availability_zone = "ap-northeast-3c"

  tags = {
    Name = "Osaka Subnet private 1c"
  }
}

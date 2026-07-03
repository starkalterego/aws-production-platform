# Public Subnet A

resource "aws_subnet" "public_a" {

  vpc_id = aws_vpc.main.id

  cidr_block = "10.0.1.0/24"

  availability_zone = data.aws_availability_zones.available.names[0]

  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-a"
  }
}

# Public Subnet B

resource "aws_subnet" "public_b" {

  vpc_id = aws_vpc.main.id

  cidr_block = "10.0.2.0/24"

  availability_zone = data.aws_availability_zones.available.names[1]

  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-b"
  }
}

# Private Subnet A

resource "aws_subnet" "private_a" {

  vpc_id = aws_vpc.main.id

  cidr_block = "10.0.11.0/24"

  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "private-subnet-a"
  }
}

# Private Subnet B

resource "aws_subnet" "private_b" {

  vpc_id = aws_vpc.main.id

  cidr_block = "10.0.12.0/24"

  availability_zone = data.aws_availability_zones.available.names[1]

  tags = {
    Name = "private-subnet-b"
  }
}

# Internet Gateway

resource "aws_internet_gateway" "igw" {

  vpc_id = aws_vpc.main.id

  tags = {
    Name = "aws-production-platform-igw"
  }
}
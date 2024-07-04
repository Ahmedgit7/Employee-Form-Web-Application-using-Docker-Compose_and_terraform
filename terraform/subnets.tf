resource "aws_subnet" "private-ap-south-1a" {
  vpc_id            = aws_vpc.employee-main.id
  cidr_block        = var.private_subnet_cidr_block_1a
  availability_zone = var.availability_zone_1a

  tags = {
    "Name"                            = "private-ap-south-1a"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/employee-cluster"      = "owned"
  }
}

resource "aws_subnet" "private-ap-south-1b" {
  vpc_id            = aws_vpc.employee-main.id
  cidr_block        = var.private_subnet_cidr_block_1b
  availability_zone = var.availability_zone_1b

  tags = {
    "Name"                            = "private-ap-south-1b"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/employee-cluster"      = "owned"
  }
}

resource "aws_subnet" "public-ap-south-1a" {
  vpc_id                  = aws_vpc.employee-main.id
  cidr_block              = var.public_subnet_cidr_block_1a
  availability_zone       = var.availability_zone_1a
  map_public_ip_on_launch = true

  tags = {
    "Name"                       = "public-ap-south-1a"
    "kubernetes.io/role/elb"     = "1"
    "kubernetes.io/cluster/employee-cluster" = "owned"
  }
}

resource "aws_subnet" "public-ap-south-1b" {
  vpc_id                  = aws_vpc.employee-main.id
  cidr_block              = var.public_subnet_cidr_block_1b
  availability_zone       = var.availability_zone_1b
  map_public_ip_on_launch = true

  tags = {
    "Name"                       = "public-ap-south-1b"
    "kubernetes.io/role/elb"     = "1"
    "kubernetes.io/cluster/employee-cluster" = "owned"
  }
}

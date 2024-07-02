resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.employee-main.id

  tags = {
    Name = "igw"
  }
}
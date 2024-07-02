resource "aws_vpc" "employee-main" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "main"
  }
}
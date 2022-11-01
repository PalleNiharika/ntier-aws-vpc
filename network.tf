resource "aws_vpc" "ntier_vpc" {
  cidr_block = var.cidr_block
  tags = {
    "Name" = "ntier_vpc"
  }
}

resource "aws_subnet" "ntier_subnet" {
  count = length(var.name_subnet) 
  vpc_id = aws_vpc.ntier_vpc.id
  cidr_block = cidrsubnet(var.cidr_block,8,count.index)
  availability_zone = var.azs_subnet[count.index]
  tags = {
    "Name" = var.name_subnet[count.index]
  }
}
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "public" {
  for_each = { for idx, subnet in var.public_subnets : idx => subnet }

  vpc_id            = aws_vpc.main.id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.az

  tags = {
    Name = each.value.name
  }
}

resource "aws_subnet" "private" {
  for_each = { for idx, subnet in var.private_subnets : idx => subnet }

  vpc_id            = aws_vpc.main.id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.az

  tags = {
    Name = each.value.name
  }
}
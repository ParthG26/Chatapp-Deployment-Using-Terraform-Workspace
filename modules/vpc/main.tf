
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "Modules-VPC-${terraform.workspace}"
  }
}

resource "aws_subnet" "subnets" {
  for_each          = var.subnets
  vpc_id            = aws_vpc.main.id
  cidr_block        = each.value.cidr
  availability_zone = each.value.az
  tags = {
    Name = each.key
  }
}
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "${terraform.workspace}-IGW"
  }
}

resource "aws_eip" "eip" {
  domain = "vpc"
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.subnets["Public1"].id
  tags = {
    Name = "${terraform.workspace}-NATGW"
  }
}

resource "aws_route_table" "publicrt" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "${terraform.workspace}-Public-RT"
  }
}

resource "aws_route_table" "privatert" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }
  tags = {
    Name = "${terraform.workspace}-Private-RT"
  }
}

resource "aws_route_table_association" "public_assoc" {
  route_table_id = aws_route_table.publicrt.id
  for_each = {
    public-1a = aws_subnet.subnets["Public1"].id
    public-1b = aws_subnet.subnets["Public2"].id
  }
  subnet_id = each.value
}

resource "aws_route_table_association" "private_assoc" {
  route_table_id = aws_route_table.privatert.id
  for_each = {
    private-1a = aws_subnet.subnets["Private1"].id
    private-1b = aws_subnet.subnets["Private2"].id
  }
  subnet_id = each.value
}

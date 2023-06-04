locals {
  vpc_cidr_block ="12.0.0.0/16"
  tags ={
    Name ="dev_vpc"
  }
}

resource "aws_vpc" "main" {
  cidr_block =local.vpc_cidr_block
  tags       =local.tags
}

resource "aws_subnet" "public_subnet_one" {
  vpc_id                  =aws_vpc.main.id
  cidr_block              =var.public_subnet_one
  availability_zone       =var.public_subnet_one_az
  map_public_ip_on_launch =var.public_subnet_one_map_public_ip_on_launch
  tags =var.public_subnet_one_tags
}

resource "aws_subnet" "public_subnet_two" {
  vpc_id                  =aws_vpc.main.id
  cidr_block              =var.public_subnet_two
  availability_zone       =var.public_subnet_two_az
  map_public_ip_on_launch =var.public_subnet_two_map_public_ip_on_launch
  tags =var.public_subnet_two_tags
}

resource "aws_subnet" "private_subnet_one" {
  vpc_id                  =aws_vpc.main.id
  cidr_block              =var.private_subnet_one
  availability_zone       =var.private_subnet_one_az
  map_public_ip_on_launch =var.private_subnet_one_map_public_ip_on_launch
  tags =var.private_subnet_one_tags
}

resource "aws_subnet" "private_subnet_two" {
  vpc_id                  =aws_vpc.main.id
  cidr_block              =var.private_subnet_two
  availability_zone       =var.private_subnet_two_az
  map_public_ip_on_launch =var.private_subnet_two_map_public_ip_on_launch
  tags =var.private_subnet_two_tags
}

resource "aws_internet_gateway" "igw_one" {
  vpc_id = aws_vpc.main.id

  tags=local.tags

}

resource "aws_route_table" "route_table_one" {
  vpc_id = "${aws_vpc.main.id}"

  route {
    cidr_block = var.igw_cidr
    gateway_id = "${aws_internet_gateway.igw_one.id}"
  }
  tags=var.public_route_tag
}

resource "aws_route_table_association" "infra_public_one" {
  subnet_id      = aws_subnet.public_subnet_one.id
  route_table_id = aws_route_table.route_table_one.id
}
resource "aws_route_table_association" "infra_public_two" {
  subnet_id      = aws_subnet.public_subnet_two.id
  route_table_id = aws_route_table.route_table_one.id
}

resource "aws_route_table" "private_route_table_two" {
  vpc_id = "${aws_vpc.main.id}"
  tags=var.private_route_tag
}
resource "aws_route_table_association" "infra_private_one" {
  subnet_id      = aws_subnet.private_subnet_one.id
  route_table_id = aws_route_table.private_route_table_two.id
}
resource "aws_route_table_association" "infra_private_two" {
  subnet_id      = aws_subnet.private_subnet_two.id
  route_table_id = aws_route_table.private_route_table_two.id
}
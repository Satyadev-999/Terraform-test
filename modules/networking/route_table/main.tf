resource "aws_route_table" "aws_route_table" {
    vpc_id = var.vpc_id
    route {
    cidr_block = var.igw_cidr
    gateway_id = var.gateway_id
    }
    tags = var.route_tags
}
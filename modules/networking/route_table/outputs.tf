output "aws_route" {
    value = aws_route_table.aws_interaws_route_tablenet_gateway.aws_route
    description = "aws route table"
}
output "aws_nat_gateway" {
    value = aws_route_table.aws_interaws_route_tablenet_gateway.aws_nat_gateway
    description = "aws route table"
}

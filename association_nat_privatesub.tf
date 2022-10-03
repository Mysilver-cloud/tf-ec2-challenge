# Associate private subnet 1 to route table
resource "aws_route_table_association" "rt_associate_private1" {
    subnet_id = aws_subnet.private1.id
    route_table_id = aws_route_table.rt_nat.id
}
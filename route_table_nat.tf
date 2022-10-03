# Creating Route Table for NAT Gateway
resource "aws_route_table" "rt_nat" {
    vpc_id = aws_vpc.main_vpc.id
route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.natgw.id
    }
tags = {
        Name = "Nat route for public subnet"
    }
}
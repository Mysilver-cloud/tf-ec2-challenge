# Create private subnet

resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = "192.168.11.0/24"
  map_public_ip_on_launch = false

  tags = {
    Name = "private1"
  }
}
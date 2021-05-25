resource "aws_route_table" "public_allow" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
   tags = {
    Name = "public-subnet"
  }
}

resource "aws_route_table_association" "a" {
  count = length(var.subnet_list)  
  subnet_id      = element(aws_subnet.subnet.*.id , count.index)  
  route_table_id = aws_route_table.public_allow.id
}
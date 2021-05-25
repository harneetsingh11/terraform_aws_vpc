resource "aws_subnet" "subnet" {
  count = length(var.subnet_list)
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "${element(var.subnet_list, count.index)}"
  map_public_ip_on_launch = true
  tags = {
    Name = "subnet-${count.index + 1} "
  }
}
resource "aws_vpc" "vpc" {
  cidr_block       = "${var.cidr}"
  instance_tenancy = "default"

  tags = {
    Name = "avi-soft"
  }
}
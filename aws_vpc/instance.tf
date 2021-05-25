resource "aws_instance" "os1" {
  count = length(var.subnet_list)
  ami           = "ami-010aff33ed5991201" 
  instance_type = "t2.micro"
  tags = {
      type = "terraform"
  }
  key_name = "avi"
  subnet_id = aws_subnet.subnet[count.index].id
}
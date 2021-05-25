variable "cidr" {
    default = "10.20.0.0/16"
    description = "vpc cidr valur/range"
}
variable "region" {
  default = "ap-south-1"
}
variable "subnet_list" {
    description = "no of subnet you want provide their cidr value in list"
    default = ["10.20.1.0/24", "10.20.2.0/24"]
}
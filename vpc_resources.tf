resource "aws_vpc" "sunny" {

  cidr_block       = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  

  tags = {

    Name = var.vpc_name

}
}

resource "aws_subnet" "public1" {

  vpc_id     = "${aws_vpc.sunny.id}"

  cidr_block = var.public_1a_cidr

  availability_zone = var.public_az_1a

  map_public_ip_on_launch = "true"

  tags = {
    Name = var.public_name_1a
 
}
}

resource "aws_subnet" "public2" {

  vpc_id     = "${aws_vpc.sunny.id}"

  cidr_block = var.public_1b_cidr

  availability_zone = var.public_az_1b

  map_public_ip_on_launch = "true"

  tags = {
    Name = var.public_name_1b
 
}
}

resource "aws_subnet" "privateapp1" {

  vpc_id     = "${aws_vpc.sunny.id}"

  cidr_block = var.private_1a_cidr

  availability_zone = var.private_app_az_1a

  map_public_ip_on_launch = "false"

  tags = {

    Name = var.private_1a_name
  

}

}

resource "aws_subnet" "privateapp2" {

  vpc_id     = "${aws_vpc.sunny.id}"

  cidr_block = var.private_1b_cidr

  availability_zone = var.private_app_az_1b

  map_public_ip_on_launch = "false"

  tags = {

    Name = var.private_1b_name
  

}

}

resource "aws_subnet" "privatedatabase1" {

  vpc_id     = "${aws_vpc.sunny.id}"

  cidr_block = var.private_db_1a_cidr

  availability_zone = var.private_db_az_1a

  map_public_ip_on_launch = "false"

  tags = {

    Name = var.private_db_1a_name
  

}

}

resource "aws_subnet" "privatedatabase2" {

  vpc_id     = "${aws_vpc.sunny.id}"

  cidr_block = var.private_db_1b_cidr

  availability_zone = var.private_db_az_1b

  map_public_ip_on_launch = "false"

  tags = {

    Name = var.private_db_1b_name
  

}

}


resource "aws_internet_gateway" "abhinav_igw" {
  vpc_id = aws_vpc.sunny.id

  tags = {
    Name = var.ig_name
  }
}



#Creating EIP

resource "aws_eip" "nat" {

vpc      = true
tags = {
   Name = var.eip_name
}
}



#Creating NAT gateway

resource "aws_nat_gateway" "my_nat_gateway" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public1.id
  tags = {
    Name = var.nat_name
  }
}



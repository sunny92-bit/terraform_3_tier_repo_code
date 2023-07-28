
#Creating public route table and associating public subnet to the same route table

resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.sunny.id

  route {

    cidr_block = "0.0.0.0/0"

    gateway_id = "${aws_internet_gateway.abhinav_igw.id}"

  }

  tags = {
    Name = "Abhinav-BastionPublicRouteTable"
  }
}

resource "aws_route_table_association" "public1" {

  subnet_id      = aws_subnet.public1.id

  route_table_id = aws_route_table.public-route-table.id
 

}

resource "aws_route_table_association" "public2" {

  subnet_id      = aws_subnet.public2.id

  route_table_id = aws_route_table.public-route-table.id
 

}



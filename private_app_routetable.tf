#Creating private route table and associating private subnet to the same route table

resource "aws_route_table" "private-route-table" {
  vpc_id = aws_vpc.sunny.id

  route {

    cidr_block = "0.0.0.0/0"

    gateway_id = "${aws_nat_gateway.my_nat_gateway.id}"

  }

  tags = {
    Name = "Abhinav-AppPrivateRouteTable"
  }
}

resource "aws_route_table_association" "private1" {

  subnet_id      = aws_subnet.privateapp1.id

  route_table_id = aws_route_table.private-route-table.id
 

}

resource "aws_route_table_association" "private2" {

  subnet_id      = aws_subnet.privateapp2.id

  route_table_id = aws_route_table.private-route-table.id
 

}
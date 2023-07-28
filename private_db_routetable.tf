#Creating database route table and associating database subnet to the same route table

resource "aws_route_table" "database-route-table" {
  vpc_id = aws_vpc.sunny.id

#  route {

#    cidr_block = "0.0.0.0/0"

#    gateway_id = "${aws_nat_gateway.my_nat_gateway.id}"

#  }

  tags = {
    Name = "Abhinav-DBPrivateRouteTable"
  }
}

resource "aws_route_table_association" "dbprivate1" {

  subnet_id      = aws_subnet.privatedatabase1.id

  route_table_id = aws_route_table.database-route-table.id
 

}

resource "aws_route_table_association" "dbprivate2" {

  subnet_id      = aws_subnet.privatedatabase2.id

  route_table_id = aws_route_table.database-route-table.id
 

}
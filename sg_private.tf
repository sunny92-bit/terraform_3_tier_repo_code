resource "aws_security_group" "private_sg" {
  vpc_id = aws_vpc.sunny.id
  name_prefix = "private_sg_"
  description = "Security group for private subnet"


  # Allow All inbound traffic from the public security group
  ingress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    security_groups = [aws_security_group.public_sg.id]
  }
  ingress {
    from_port       = -1
    to_port         = -1
    protocol        = "icmp"
    security_groups = [aws_security_group.public_sg.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "SG-PRIVATE-APP-ABHINAV"
     
}
  depends_on = [aws_vpc.sunny]
}
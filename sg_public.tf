resource "aws_security_group" "public_sg" {
  
  vpc_id = aws_vpc.sunny.id
  name_prefix = "public_sg_"
  description = "Security group for public subnet"
# Allow incoming RDP traffic from my IP
  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["103.87.142.193/32"]
  }
  
  # Allow incoming HTTP traffic from anywhere
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  # Allow incoming HTTPS traffic from anywhere
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port       = -1
    to_port         = -1
    protocol        = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow outgoing traffic to anywhere
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
    Name = "SG-PUBLIC-ABHINAV"
     
}
  depends_on = [aws_vpc.sunny]
}

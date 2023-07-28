resource "aws_instance" "public_ec2" {
  count         = 1  
  ami           = "ami-05c49a63441937596" 
  instance_type = "t3.micro"

  # Associate the security group with the instances
  vpc_security_group_ids = [aws_security_group.public_sg.id] 
  subnet_id = aws_subnet.public1.id
  key_name = "terraform23"
  root_block_device {
    volume_size = 40  
  }

  tags = {
    Name = "Abhinav_Basion_Host_Instance"
    Application = " Jump Server"
  }
  depends_on = [aws_security_group.public_sg]
}
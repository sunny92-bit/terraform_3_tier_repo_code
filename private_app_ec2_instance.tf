resource "aws_instance" "app_private_ec2" {
  count         = 1  
  ami           = "ami-05c49a63441937596" 
  instance_type = "t3.micro"

  # Associate the security group with the instances
  vpc_security_group_ids = [aws_security_group.private_sg.id] 
  subnet_id = aws_subnet.privateapp1.id
  key_name = "terraform23"
  root_block_device {
    volume_size = 40  
  }

  tags = {
    Name = "Abhinav_App_Instance"
    Application = " App Server"
  }
  depends_on = [aws_security_group.private_sg]
}
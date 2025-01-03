resource "aws_instance" "smart_home_ec2" {
  ami                    = "ami-0e2c8caa4b6378d8c"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "SmartHomeKeypair"
  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [aws_security_group.smart-home-sg.id]

  associate_public_ip_address = true

  tags = {
    Name        = "smart-home-ec2"
    Environment = "dev"
  }
}
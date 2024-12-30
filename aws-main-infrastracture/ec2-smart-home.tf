module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "smart-home-ec2"
  instance_type          = "t2.micro"
  key_name               = var.smart-home-keypair
  vpc_security_group_ids = var.smart-home-sg-id
  subnet_id              = "subnet-0577e153d08c7d1d9"

  associate_public_ip_address = true 

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
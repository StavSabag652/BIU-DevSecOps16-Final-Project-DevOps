module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "vpc-smart-home"
  cidr = var.cidr

  azs             = var.azs
  public_subnets  = var.public_subnet
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "vpc-smart-home"
    Terraform = "true"
    Environment = "dev"
  }
}
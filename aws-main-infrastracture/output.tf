output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output  "SmartHomeKeypair_id" {
  value = var.SmartHomeKeypair
}
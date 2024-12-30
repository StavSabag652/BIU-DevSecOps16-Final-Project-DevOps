variable "region" {
  default = "us-east-1"
}

variable "public_subnet" {
    type = list(string) 
    default = ["10.0.10.0/24"]
}

variable "azs" {
    type = list(string)
    default = ["us-east-1a"]
}

variable "cidr" {
    type = string
    default = "10.0.0.0/24"
}

variable "smart-home-sg-id" {
  type = list(string)
  default = ["sg-04ab0825b57179042"] 
}

variable "smart-home-keypair" {
  description = "Keypair name for SSH access"
  type        = string
}
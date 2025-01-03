variable "region" {
  default = "us-east-1"
  type    = string
}

variable "public_subnet" {
    type = list(string) 
    default = ["10.0.1.0/24"]
}

variable "azs" {
    type = list(string)
    default = ["us-east-1a"]
}

variable "cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "SmartHomeKeypair" {
  default = "key-0f2d0e99f479ff3b2"
  type        = string
}

variable "vpc_id" {
 default = "vpc-smart-home"
 type =  string
}
terraform {
  backend "s3" {
    bucket = "stav-project-bucket"
    key    = "first-project-ci-cd/terraform.tfstate"
    region = "us-east-1"
  }
}
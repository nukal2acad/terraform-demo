terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.27.0"
    }
  }
  # Terraform tfstate file remote section
  backend "s3" {
    bucket = "kiran-s3-terraform-demo"
    key = "dev/Kiran/terraform.tfstate"
    encrypt = true
    region = "us-west-1"
    dynamodb_table = "kiran-locking-table-terraform-demo"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
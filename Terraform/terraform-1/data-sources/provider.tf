#https://registry.terraform.io/providers/hashicorp/aws/latest/docs
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.16.0"
    }
  }
}

provider "aws" {
  # Configuration options
  #you can give your access key and secret key here,but security problem
  region = "us-east-1"
  #region = "ap-south-1"
}
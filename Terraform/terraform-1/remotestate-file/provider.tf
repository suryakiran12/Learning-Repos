#https://registry.terraform.io/providers/hashicorp/aws/latest/docs
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.16.0"
    }
  }
  #create a s3 bucket named test-bucket-surya
  #create a table in dynamodb with name test-bucket-surya-lock
  #while creating table in dynamodb give partitionkey as LockID and
  #type as string
  backend "s3" {
    bucket   = "test-bucket-surya"
    key = "foreach-demo"
    region = "us-east-1"
    dynamodb_table = "test-bucket-surya-lock"
  }

}

provider "aws" {
  # Configuration options
  #you can give your access key and secret key here,but security problem
  region = "us-east-1"
}
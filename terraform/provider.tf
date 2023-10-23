terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.15.0"
    }
  }
  
  backend "s3" {
    bucket = "terraform-vpc-creation-bucket"
    key = "catalogue-dev"
    region = "us-east-1"
    dynamodb_table = "terraform_dynamo_table_s3"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.27.0"
    }
  }
  #terraform statefile remote backend section
  backend "s3" {
    bucket = "boa-amar1-terraform-bucket"
    key = "dev/amar/terraform.tfstate"
    encrypt = true
    region = "us-west-1"
    dynamodb_table = "amar-lock-table"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1" #name of region
}
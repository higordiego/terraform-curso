terraform {
  required_version = "0.14.8"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.33.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "finspect"
}

resource "aws_s3_bucket" "my_test_bucket" {
  bucket = "app.test.finspect.me"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Owner       = "Higor Diego"
  }
}

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
  region  = var.aws_region
  profile = var.aws_profile
}


data "aws_caller_identity" "current" {}


resource "aws_s3_bucket" "remote-state" {
  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
  versioning {
    enabled = true
  }
}

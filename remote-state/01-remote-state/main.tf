terraform {
  required_version = "0.14.8"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.33.0"
    }
  }

  backend "s3" {
    bucket  = "tfstate-028422979669"
    key     = "dev/01-remote-state/terraform.tfstate"
    region  = "us-east-1"
    profile = "finspect"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

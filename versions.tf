//terraform configurations
terraform {
  required_version = "~> 1.9.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

//provider (aws) configurations
provider "aws" {
  profile = "default"
  region  = var.aws_region
}
terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      version = "3.73.0"
      source  = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "silviocavalcanti-remote-state"
    key    = "aws-vpc/terraform.tfstate"
    region = "sa-east-1"
  }
}

provider "aws" {
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "silviocavalcantibonfim"
      managed-by = "terraform"
    }
  }
}
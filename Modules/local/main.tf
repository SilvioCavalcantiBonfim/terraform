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
    key    = "aws-vm-local/terraform.tfstate"
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

module "network" {
  source = "./network"

  cidr_vpc = "10.0.0.0/16"
  cidr_subnet = "10.0.0.0/24"
  environment = "developer"
}
terraform {
  required_providers {
    alicloud = {
      source  = "aliyun/alicloud"
      version = "1.209.0"
    }
  }

  backend "oss" {
    bucket = "silviocavalcantibonfim-reomte-state-bucket"
    prefix = "vm"
    key    = "terraform.tfstate"
  }
}

provider "alicloud" {}

data "terraform_remote_state" "vpc" {
  backend = "oss"

  config = {
    bucket = "silviocavalcantibonfim-reomte-state-bucket"
    prefix = "vpc"
    key    = "terraform.tfstate"
  }
}
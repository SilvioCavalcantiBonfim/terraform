terraform {
  required_providers {
    alicloud = {
      source  = "aliyun/alicloud"
      version = "1.209.0"
    }
  }

  backend "oss" {
    bucket = "silviocavalcantibonfim-reomte-state-bucket"
    prefix = "vpc"
    key    = "terraform.tfstate"
  }
}

provider "alicloud" {}
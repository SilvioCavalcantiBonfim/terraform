terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.78.0"
    }
  }
  backend "gcs" {
    bucket = "silviocavalcantibonfim-remote-state-bucket"
    prefix = "gcp-vm"
  }
}

provider "google" {
  project = var.project
  region  = var.region
}

data "terraform_remote_state" "vpc" {
  backend = "gcs"

  config = {
    bucket = "silviocavalcantibonfim-remote-state-bucket"
    prefix = "gcp-vpc"
  }
}
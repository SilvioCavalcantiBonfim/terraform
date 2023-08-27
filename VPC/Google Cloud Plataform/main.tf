terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.78.0"
    }
  }
  backend "gcs" {
    bucket = "silviocavalcantibonfim-remote-state-bucket"
    prefix = "gcp-vpc"
  }
}

provider "google" {
  project = var.project
  region  = var.region
}
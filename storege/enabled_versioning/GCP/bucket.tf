resource "google_storage_bucket" "remote-state-bucket" {
  name     = "silviocavalcantibonfim-remote-state-bucket"
  location = "SOUTHAMERICA-EAST1"
  versioning {
    enabled = true
  }
}
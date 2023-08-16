resource "random_id" "prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "frist-bucket" {
  name     = "${random_id.prefix.hex}-bucket"
  location = "SOUTHAMERICA-EAST1"
}
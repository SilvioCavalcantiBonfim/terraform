resource "random_id" "prefix" {
  byte_length = 8
}

resource "alicloud_oss_bucket" "bucket" {
  bucket = "${random_id.prefix.hex}-bucket"
  acl    = "private"
}
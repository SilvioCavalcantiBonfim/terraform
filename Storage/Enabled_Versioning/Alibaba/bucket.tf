resource "alicloud_oss_bucket" "bucket" {
  bucket = "silviocavalcantibonfim-reomte-state-bucket"
  acl    = "private"
  versioning {
    status = "Enabled"
  }
}
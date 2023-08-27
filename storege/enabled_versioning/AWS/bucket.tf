resource "aws_s3_bucket" "reomte-state-bucket" {
  bucket = "silviocavalcanti-remote-state"
  # O prefixo é conflitante com o nome da bucket (usa um ou outro)
  # bucket_prefix = "remote-state"
  
  versioning {
    enabled = true
  }
}
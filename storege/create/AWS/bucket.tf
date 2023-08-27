resource "aws_s3_bucket" "bucket" {
  # bucket = "exemplo-curso-terraform"
  # O prefixo é conflitante com o nome da bucket (usa um ou outro)
  bucket_prefix = "bucket"
}
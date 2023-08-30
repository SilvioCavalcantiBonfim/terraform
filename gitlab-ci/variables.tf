variable "location" {
  type        = string
  description = "Região para criar o recursos"
  default     = "Brazil South"
}

variable "aws_pub_key" {
  description = "AWS ssh public key"
}


variable "azure_pub_key" {
  description = "Azure ssh public key"
}
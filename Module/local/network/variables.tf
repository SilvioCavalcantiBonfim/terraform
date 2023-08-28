variable "cidr_vpc" {
  type = string
  description = "Cidr block for VPC"
  # default = "10.0.0.0/16"
}

variable "cidr_subnet" {
  type = string
  description = "Cidr block for subnet"
  # default = "10.0.1.0/24"
}

variable "environment" {
  type = string
  description = "environment context"
}
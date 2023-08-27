variable "location" {
  type        = string
  description = "Região para criar o recursos"
  default     = "Brazil South"
}

variable "account_tier" {
  type        = string
  description = "tier da storage account na azure"
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  description = "tipo de replicação de dados do storege"
  default     = "LRS"
}
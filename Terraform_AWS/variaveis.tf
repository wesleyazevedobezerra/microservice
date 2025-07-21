variable "region" {
  type        = string
  description = "Região dos recursos na AWS"
  default     = "sa-east-1"
}

variable "tags" {
  type        = map(string)
  description = "Tags aplicadas aos recursos"
  default = {
    Environment = "Dev"
    Terraform   = "true"
  }
}

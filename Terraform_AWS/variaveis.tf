variable "region" {
  type        = string
  description = "Região dos recursos na AWS"
  default     = "sa-east-1" # Região de São Paulo, equivalente a 'brazilsouth' no Azure
}

variable "tags" {
  type        = map(any)
  description = "Tags aplicadas aos recursos da AWS"
  default = {
    ambiente    = "desenvolvimento"
    responsavel = "Wesley Azevedo Bezerra"
  }
}

variable "subnet_ids" {
  type        = list(string)
  description = "IDs das subnets para o cluster EKS"
}

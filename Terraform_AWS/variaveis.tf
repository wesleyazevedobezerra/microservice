variable "region" {
  type        = string
  description = "Região dos recursos na AWS"
  default     = "sa-east-1"
}

variable "tags" {
  type        = map(string)
  description = "Tags aplicadas aos recursos da AWS"
  default = {
    ambiente    = "desenvolvimento"
    responsavel = "Wesley Azevedo Bezerra"
  }
}

variable "subnet_ids" {
  type        = list(string)
  description = "IDs das subnets para o cluster EKS"
  default     = []
}

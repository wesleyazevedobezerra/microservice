variable "location" {
  type        = string
  description = "Localizacao dos Recursos do Azure"
  default     = "brazilsouth"
}

variable "tags" {
  type        = map(any)
  description = "Tags nos Recursos e Servicos do Azure"
  default = {
    ambiente    = "desenvolvimento"
    responsavel = "Wesley Azevedo Bezerra"
  }
}

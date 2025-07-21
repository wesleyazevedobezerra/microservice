variable "region" {
  type        = string
  default     = "us-east-1"
  description = "Região da AWS onde os recursos serão criados"
}

variable "tags" {
  type = map(string)
  default = {
    ambiente    = "desenvolvimento"
    responsavel = "Wesley Azevedo Bezerra"
  }
}

resource "aws_ecr_repository" "ecr" {
  name                 = "resourceintex" # deve ser único por conta na região
  image_tag_mutability = "MUTABLE"       # ou "IMMUTABLE"
  tags                 = var.tags

  encryption_configuration {
    encryption_type = "AES256"
  }
}

output "ecr_repository_url" {
  value = aws_ecr_repository.ecr.repository_url
}

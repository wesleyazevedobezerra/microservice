resource "aws_ecr_repository" "ecr" {
  name                 = "resourceintex"
  image_tag_mutability = "MUTABLE"
  tags                 = var.tags

  encryption_configuration {
    encryption_type = "AES256"
  }
}

output "ecr_repository_url" {
  value = aws_ecr_repository.ecr.repository_url
}

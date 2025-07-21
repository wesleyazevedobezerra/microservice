output "vpc_id" {
  value = module.vpc.vpc_id
}

output "private_subnets" {
  value = module.vpc.private_subnets
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "eks_cluster_name" {
  value = aws_eks_cluster.eks_cluster.name
}

output "ecr_url" {
  value = aws_ecr_repository.ecr.repository_url
}

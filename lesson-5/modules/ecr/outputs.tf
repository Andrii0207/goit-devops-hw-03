output "ecr_repository_url" {
  description = "The URL of the ECR repository"
  value       = aws_ecr_repository.main.repository_url

}

output "ecr_repository_name" {
  description = "The name of the ECR repository"
  value       = aws_ecr_repository.main.name
}

output "eks_cluster_role_arn" {
  description = "IAM role ARN used by the EKS control plane"
  value       = aws_iam_role.eks_cluster.arn
}

output "eks_node_role_arn" {
  description = "IAM role ARN for worker nodes"
  value       = aws_iam_role.eks_nodes.arn
}

output "oidc_provider_arn" {
  description = "ARN провайдера для IRSA"
  value       = aws_iam_openid_connect_provider.oidc.arn
}

output "oidc_provider_url" {
  description = "URL провайдера для IRSA"
  value       = aws_iam_openid_connect_provider.oidc.url
}
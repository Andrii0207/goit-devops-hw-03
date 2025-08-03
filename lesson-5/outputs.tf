output "s3_backend_url" {
  description = "The URL of the S3 bucket for Terraform state"
  value       = module.s3_backend.bucket_regional_domain_name
}

output "s3_bucket_name" {
  description = "The name of the S3 bucket for Terraform state"
  value       = module.s3_backend.bucket
}
output "repository_url" {
  description = "The URL of the ECR repository"
  value       = module.ecr.ecr_repository_url
}

output "repository_name" {
  description = "The name of the ECR repository"
  value       = module.ecr.ecr_repository_name
}

output "dynamodb_table" {
  description = "DynamoDB table for state locking"
  value       = module.s3_backend.table_name
}

output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "public_subnets" {
  description = "Public subnet IDs"
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "Private subnet IDs"
  value       = module.vpc.private_subnets
}

output "ecr_repo_url" {
  description = "ECR repository URL"
  value       = module.ecr.repository_url
}

output "eks_cluster_name" {
  description = "EKS cluster name"
  value       = module.eks.eks_cluster_name
}

output "eks_cluster_endpoint" {
  description = "EKS API endpoint"
  value       = module.eks.eks_cluster_endpoint
}

output "eks_cluster_ca" {
  description = "EKS cluster CA certificate"
  value       = module.eks.eks_cluster_ca
}

output "argo_cd_url" {
  description = "Argo CD URL-address"
  value       = module.argo_cd.url
}

output "argo_cd_password" {
  description = "Argo CD admin base password"
  value       = module.argo_cd.password
  sensitive   = true
}

output "jenkins_url" {
  description = "Jenkins URL-address"
  value       = module.jenkins.url
}

output "jenkins_password" {
  description = "Jenkins admin base password"
  value       = module.jenkins.password
  sensitive   = true
}
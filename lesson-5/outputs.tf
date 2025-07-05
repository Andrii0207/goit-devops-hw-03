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
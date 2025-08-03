variable "cluster_name" {
  description = "EKS-claster name"
  type        = string
}

variable "oidc_provider_arn" {
  description = "ARN EKS OIDC провайдера для IRSA"
  type        = string
}

variable "oidc_provider_url" {
  description = "Provider URL EKS OIDC"
  type        = string
}
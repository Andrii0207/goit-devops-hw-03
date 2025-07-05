variable "ecr_name" {
  description = "The name of the ECR repository"
  type        = string
  default     = "aws_ecr_repository"
}

variable "scan_on_push" {
  description = "Whether to scan images on push"
  type        = bool
  default     = true
}

variable "lifecycle_policy" {
  type = string
  default = <<EOF
{
  "rules": [
    {
      "rulePriority": 1,
      "description": "Expire untagged images",
      "selection": {
        "tagStatus": "untagged",
        "countType": "imageCountMoreThan",
        "countNumber": 5
      },
      "action": {
        "type": "expire"
      }
    }
  ]
}
EOF
}

variable "environment" {
  description = "The environment for the ECR resources"
  type        = string
  default     = "lesson-5"
}
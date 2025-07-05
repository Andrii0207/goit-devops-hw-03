variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "aws_bucket_for_terraform_state"
}

variable "environment" {
  description = "The environment for the S3 bucket"
  type        = string
  default     = "lesson-5"
}

variable "table_name" {
  description = "The name of the DynamoDB table for state locking"
  type        = string
  default     = "terraform-locks"
}

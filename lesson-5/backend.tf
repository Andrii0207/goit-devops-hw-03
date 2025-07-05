# terraform {
#   backend "s3" {
#     bucket         = "aws_s3_terraform-state-bucket"
#     key            = "lesson-5/terraform.tfstate"
#     region         = "eu-central-1"
#     dynamodb_table = "terraform-locks"
#     encrypt        = true
#   }
# }


resource "aws_ecr_repository" "main" {
  name = var.ecr_name
  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }

  tags = {
    Name = "ECR Repository"
    Environment = var.environment
  }
}
resource "aws_ecr_lifecycle_policy" "policy" {
  repository = aws_ecr_repository.main.name
  policy     = var.lifecycle_policy
}
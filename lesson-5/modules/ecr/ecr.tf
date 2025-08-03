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


resource "aws_ecr_repository_policy" "main" {
  repository = aws_ecr_repository.main.name

  policy = jsonencode({
    Version = "2008-10-17"
    Statement = [
      {
        Sid       = "AllowPushPull"
        Effect    = "Allow"
        Principal = "*"
        Action = [
          "ecr:GetDownloadUrlForLayer",
          "ecr:BatchGetImage",
          "ecr:BatchCheckLayerAvailability",
          "ecr:PutImage",
          "ecr:InitiateLayerUpload",
          "ecr:UploadLayerPart",
          "ecr:CompleteLayerUpload"
        ]
      }
    ]
  })
}
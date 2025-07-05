resource "aws_s3_bucket" "main" {
  bucket = var.bucket_name

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name        = "Terraform State Bucket"
    Environment = "lesson-5"   
  }
}

resource "aws_s3_bucket_versioning" "main" {
  bucket = aws_s3_bucket.main.id

  versioning_configuration {
    status = "Enabled"
  }
}

# resource "aws_s3_ownership_controls" "main" {
#   bucket = aws_s3_bucket.main.id

#   rule {
#     object_ownership = "BucketOwnerEnforced"
#   }
# }  
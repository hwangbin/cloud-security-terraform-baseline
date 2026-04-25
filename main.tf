# Main Terraform configuration for the Cloud Security Terraform Baseline project
# Security-focused AWS resources will be added incrementally

#Initial stage:
# - provider configuration
# - variable structure
# - CI validation workflow
# - baseline resource additions in later steps

resource "aws_s3_bucket" "secure_bucket" {
  bucket = var.bucket_name

  tags = {
    Name       = var.project_name
    Enviroment = "portfolio"
    ManagedBy  = "terraform"
    Security   = "baseline"
  }
}

resource "aws_s3_bucket_public_access_block" "secure_bucket_pab" {
  bucket = aws_s3_bucket.secure_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "secure_bucket_versioning" {
  bucket = aws_s3_bucket.secure_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "secure_bucket_encryption" {
  bucket = aws_s3_bucket.secure_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
    bucket_key_enabled = true
  }
}
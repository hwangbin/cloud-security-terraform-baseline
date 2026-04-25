output "selected_aws_region" {
  description = "The AWS region used by this project"
  value       = var.aws_region
}

output "s3_bucket_name" {
  description = "Name of the secure S3 bucket"
  value       = aws_s3_bucket.secure_bucket.bucket
}

output "s3_bucket_arn" {
  description = "ARN of the secure S3 bucket"
  value       = aws_s3_bucket.secure_bucket.arn
}
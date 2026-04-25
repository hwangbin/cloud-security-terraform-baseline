variable "aws_region" {
  description = "AWS region for this project"
  type        = string
  default     = "ap-northeast-1"
}

variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
  default     = "cloud-security-baseline"
}

variable "bucket_name" {
  description = "Globally unique S3 bucket name"
  type        = string
  default     = "hwangbin-cloud-security-baseline-demo"
}
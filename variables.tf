variable "aws_region" {
  description = "AWS Region for the VPC"
  default     = "us-east-1"
}

variable "dev_bucket_name" {
  description = "The name for Development Bucket"
  default     = "dev-learning-terraform-aws-and-react"
}

variable "prod_bucket_name" {
  description = "The name for Production Bucket"
  default     = "prod-learning-terraform-aws-and-react"
}

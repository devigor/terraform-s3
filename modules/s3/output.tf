output "s3_name" {
  value = aws_s3_bucket.deploy_in_s3.bucket_domain_name
}
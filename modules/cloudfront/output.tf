output "endpoint_name" {
  value = aws_cloudfront_distribution.website_cdn.domain_name
}
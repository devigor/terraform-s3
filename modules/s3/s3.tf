resource "aws_s3_bucket" "deploy_in_s3" {
  bucket = var.bucket_name

  tags = var.tags
}

resource "aws_s3_bucket_acl" "acl_public_read" {
  bucket = aws_s3_bucket.deploy_in_s3.id
  acl    = "public-read"
}

resource "aws_s3_bucket_website_configuration" "redirect_configs" {
  bucket = aws_s3_bucket.deploy_in_s3.id

  index_document {
    suffix = "index.html"

  }

  error_document {
    key = "index.html"
  }
}

module "cdn_deploy" {
  source      = "../cloudfront"
  bucket_name = var.bucket_name
  bucket_info = aws_s3_bucket.deploy_in_s3
}

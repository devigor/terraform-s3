resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.deploy_in_s3.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "${aws_s3_bucket.deploy_in_s3.arn}/*"
      },
    ]
  })
}
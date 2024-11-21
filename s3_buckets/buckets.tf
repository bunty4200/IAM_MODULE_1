resource "aws_s3_bucket" "bucket_name" {
bucket = var.bucket_name

  tags = merge({ Name = var.bucket_name }, var.extra_tags)
}
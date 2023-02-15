resource "aws_s3_bucket" "bucket" {
  bucket = "${local.deployer_name}-kulroai-bucket"
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}
terraform {
  backend "s3" {
    bucket = "terraformlaerte"
    key    = "apicep/terraform.tfstate"
    region = "us-east-1"
  }
}



resource "aws_s3_bucket" "terraformlaerte" {
  bucket = "terraformlaerte"
}

resource "aws_s3_bucket_public_access_block" "terraformlaerte" {
  bucket = aws_s3_bucket.terraformlaerte.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

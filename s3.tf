terraform {
  backend "s3" {
    bucket = "terraformlaertes3"
    key    = "apicep/terraform.tfstate"
    region = "us-east-1"
  }
}



resource "aws_s3_bucket" "terraformlaertes3" {
  bucket = "terraformlaertes3"
}

resource "aws_s3_bucket_public_access_block" "terraformlaertes3" {
  bucket = aws_s3_bucket.terraformlaertes3.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

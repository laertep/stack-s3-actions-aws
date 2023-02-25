terraform {
  backend "s3" {
    bucket = "terraformlaerte"
    key    = "apicep/terraform.tfstate"
    region = "us-east-1"
  }
}



resource "aws_s3_bucket" "terraformlaerte" {
  bucket = "terraformlaerte"

  tags = {
    Name        = "terraformlaerte"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "aclbucket" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}

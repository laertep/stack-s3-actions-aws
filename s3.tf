terraform {
  backend "s3" {
    bucket = "bucketlaerte"
    key    = "aws-s3-cloud/bucketlaerte.tf"
    region = "us-east-1"
  }
}

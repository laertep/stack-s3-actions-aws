terraform {
  backend "s3" {
    bucket = "bucketlaerte"
    key    = "stack-s3-actions-aws/bucketlaerte.tf"
    region = "us-east-1"
    
  }
    provider "aws" {
    access_key = "<enter-your-correct-access-key>"
    secret_key = "<enter-your-correct-secret-key>"
  } 

 }
}

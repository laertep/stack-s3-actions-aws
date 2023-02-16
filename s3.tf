terraform {
  backend "s3" {
    bucket = "bucketlaerte"
    key    = "stack-s3-actions-aws/bucketlaerte.tf"
    region = "us-east-1"
    
  }
 }
} 

 


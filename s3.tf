terraform {
  backend "s3" {
    bucket = "bucketlaerte"
    key    = "stack-s3-actions-aws/bucketlaerte.tf"
    region = "us-east-1"
    
  }
 }
 

provider "aws" {
  access_key = "AKIA5YCGQBPO53QZ23WR"
  secret_key = "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"
  
}


 


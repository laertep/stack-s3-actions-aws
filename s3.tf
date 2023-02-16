terraform {
  backend "s3" {
    bucket = "bucketlaerte"
    key    = "stack-s3-actions-aws/bucketlaerte.tf"
    region = "us-east-1"
    
  }
 }
 
provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "${var.region}"
}

variable "access_key" {
  default = "<hidden_for_stack_exchange_post>"
}

variable "secret_key" {
  default = "<hidden_for_stack_exchange_post>"
}
 


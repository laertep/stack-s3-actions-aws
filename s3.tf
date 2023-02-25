terraform {
  backend "s3" {
    bucket = "terraformlaertes3"
    key    = "apicep/terraform.tfstate"
    region = "us-east-1"
  }
}





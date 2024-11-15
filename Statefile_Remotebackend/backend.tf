terraform {
  backend "s3" {
    bucket         = "hari-s3-demo-xyz" # change this
    key            = "hari/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
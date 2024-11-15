////statefile consists of all the security realated informations and details about the infrastructure that we are working By using the remote backend we can Use S3 bucket this will store the statefile information so the information is not compramised.

terraform {
  backend "s3" {
    bucket         = "hari-s3-demo-xyz" # change this
    key            = "hari/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}

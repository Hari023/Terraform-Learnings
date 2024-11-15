provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "abhishek" {
  instance_type = "t2.micro"
  ami = "ami-053b0d53c279acc90" # change this
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "Hari-s3-demo-xyz" # change this
}
/////Dynamo DB is used to lock the working (for example 5 devops engineer working on the same project in the same code this lead to error to overcome these problem locks is used once the lock used only that person can able to work untill the lock is released)

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

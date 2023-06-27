terraform {
  backend "s3" {
    bucket         = "test-first-s3bucket"
    key            = "vpc/test.tf"
    dynamodb_table = "terraform-state-lock-dynamo"
  }
}

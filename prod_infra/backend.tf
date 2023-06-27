terraform {
  backend "s3" {
    bucket         = "test-first-s3bucket"
    key            = "prod/test.tf"
    dynamodb_table = "terraform-state-lock-dynamo"
  }
}

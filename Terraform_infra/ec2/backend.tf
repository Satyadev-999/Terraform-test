terraform {
  backend "s3" {
    bucket         = "devopsclasstfstatebucket"
    key            = "dev/ec2.tf"
    dynamodb_table = "terraform-state-lock-dynamo"
  }
}

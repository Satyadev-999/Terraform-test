resource "aws_s3_bucket" "S3bucket-terraform" {
  bucket = "test-first-s3bucket"

  tags = {
    Name        = "s3-bucket"
    Environment = "Dev"
  }
}
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.S3bucket-terraform.id
  versioning_configuration {
    status = "Enabled"
  }
}
resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform-state-lock-dynamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
}


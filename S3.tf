provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "my-unique-bucket-name-987654321"  # Must be globally unique

  tags = {
    Name        = "MyS3Bucket"
    Environment = "Dev"
  }
}

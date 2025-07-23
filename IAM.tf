provider "aws" {
  region = "us-west-2"
}

# IAM User
resource "aws_iam_user" "myuser" {
  name = "my-terraform-user"
  tags = {
    Purpose = "TerraformProvisioned"
  }
}

# IAM Policy to Allow S3 Full Access (optional)
resource "aws_iam_user_policy" "s3_access" {
  name = "S3FullAccess"
  user = aws_iam_user.myuser.name

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = ["s3:*"],
        Effect = "Allow",
        Resource = "*"
      }
    ]
  })
}

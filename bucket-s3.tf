resource "aws_s3_bucket" "dev4" {
  bucket = "lab-dev4"
  acl    = "private"

  tags = {
    Name        = "lab-dev4"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "dev6" {
  provider = "aws.us-east-2"
  bucket = "lab-dev6"
  acl    = "private"

  tags = {
    Name        = "lab-dev4"
    Environment = "Dev"
  }
}
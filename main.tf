provider "aws" {
    version = "~> 2.70.4"
    region = "us-east-1"
}

provider "aws" {
    alias = "us-east-2"
    version = "~> 2.70.4"
    region = "us-east-2"
}
resource "aws_key_pair" "terraform-aws" {
  key_name = "terraform-aws"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDfRqmFGeC+bEdD4y9x2lt+8jWmT4Sj2FOxkrrkOlDxyxFOb2elR71nFJPjkWiG4A4qmIP4iTRWIeRGBNc/Lt3e0dS0xQlFniD2VQ6C67MqNiVeWDJfWE8Ct3kakGXQ++ZuP58jpO7UCjHOAh6E7K8lhsMnkmNwyN+1wbJrTfKMIsV9bKcaJuryv+f5UVhEIQuf1GwK4YRGdof7KN7xATLw6Yo5thht4ArX7IL6RW8wXz/iDAYt8TTCbAbriQGxNlzbzgaXuA3vIrURqoNCgc8n65MyC0hUks68Fdpm7VlmEQFhY0LZk9w9zCDogZUfF9+CNsMTbRJNo2FcqUI6+Et7 root@workstation"
}

resource "aws_dynamodb_table" "dynamodb-desenvolvimento" {
  provider = "aws.us-east-2"
  name  = "GameScores"
  billing_mode  = "PAY_PER_REQUEST"
  hash_key  = "UserID"
  range_key = "GameTitle"

  attribute {
    name = "UserID"
    type = "S"
  }

  attribute {
    name = "GameTitle"
    type = "S"
  }
}
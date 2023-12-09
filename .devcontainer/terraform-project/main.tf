terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.30.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
 profile = "terraform-user"
}

resource "aws_iam_user" "my-user" {
  name = "abdul-user"
  path = "/system/"
}
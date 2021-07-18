provider "aws" {
  region  = "us-east-1"
  profile = "rama"
}
resource "aws_vpc" "main" {
  cidr_block       = "10.10.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "lakshamanaraka"
  }
}
resource "aws_s3_bucket" "lakshmanbucket" {
  bucket = "myluckey"
  acl    = "public-read"

  tags = {
    Name        = "rama"
    Environment = "Dev"
  }
}
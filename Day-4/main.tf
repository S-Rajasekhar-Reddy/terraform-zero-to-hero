provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "test-ec2" {
  ami = "ami-0f5fcdfbd140e4ab7"
  instance_type = "t3.micro"
  tags = {
    Name : "demo-ubuntu-ec2"
  }
}

/*
resource "aws_s3_bucket" "terraform_remote_backend" {
  bucket = "sai-tf-remote-backend-bucket"
  tags = {
    Name  = "TF-RB-bucket"
  }
}

resource "aws_dynamodb_table" "terraform_lock" {
  name  = "terraform-lock"
  billing_mode  = "PAY_PER_REQUEST"
  hash_key  = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}*/
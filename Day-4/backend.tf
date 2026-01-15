terraform {
  backend "s3" {
    bucket = "sai-tf-remote-backend-bucket"
    key = "tf-state/terraform.tfstate"
    region = "us-east-2"
    encrypt = true
    dynamodb_table = "terraform-lock"
  }
}
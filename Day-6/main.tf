provider "aws" {
  region = "us-east-2"
}

data "aws_region" "current" {}

variable "instance_type" {
  description = "Map of instance types per workspace"
  type        = map(string)
  default = {
    "dev"   = "t3.micro"
    "stage" = "t2.micro"
    "prod"  = "t3.micro"
  }
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami = data.aws_region.current.id == "us-east-1" ? "ami-053b0d53c279acc90" : "ami-06e3c045d79fd65d9"
  instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
}
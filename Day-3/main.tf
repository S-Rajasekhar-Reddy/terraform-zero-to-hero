provider "aws" {
    region = "us-east-2"
}

module "ec2_instance" {
    source = "./modules/ec2_instance"
    instance_type_t3_micro = "t3.micro"
    ec2_name = "test-ubuntu"
}
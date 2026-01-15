resource "aws_instance" "demo" {
  ami           = var.ami_ubuntu
  instance_type = var.instance_type_t3_micro
  tags          = { Name = var.ec2_name }
}

provider "aws" {
  region = var.aws_region
}

# Define the key pair
resource "aws_key_pair" "ssh_key" {
  key_name   = var.key_name
  public_key = file("../newKey.pub") 
}

data "aws_vpc" "default" {
  default = true
}

# Fetch the subnets in the default VPC
data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

module "argocd_server" {
  source        = "../modules/ec2_instance"
  instance_name = "ArgoCD-Server"
  instance_type = var.instance_type
  ami_id        = var.ami_id
  vpc_id        = data.aws_vpc.default.id
  subnet_id     = data.aws_subnets.default.ids[0]
  web_port      = var.web_port
  key_name      = aws_key_pair.ssh_key.key_name
  root_volume_size = var.root_volume_size
  environment   = var.environment
}
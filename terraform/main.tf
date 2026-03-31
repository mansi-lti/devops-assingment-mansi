provider "aws" {
region = "us-east-1"
}

module "vpc" {
source = "./modules/vpc"
}

module "sg" {
source = "./modules/security-group"
}

module "asg" {
source = "./modules/asg"
ami_id = data.aws_ami.amazon_linux.id
instance_type = var.instance_type[var.environment]
}

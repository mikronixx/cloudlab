provider "aws" {
  region  = var.region
  profile = var.profile
}

module "vpc" {
  source   = "./modules/vpc"
  name     = var.name
  vpc_cidr = var.vpc_cidr
  azs      = var.azs
}

module "ec2" {
  source         = "./modules/ec2"
  name           = var.name
  vpc_id         = module.vpc.vpc_id
  subnet_ids     = module.vpc.public_subnet_ids
  instance_count = var.instance_count
  key_name       = var.key_name
  ssh_cidr       = var.ssh_cidr
}

provider "aws" {
  region = var.region
}

module "vpc" {
  source          = "../../modules/vpc"
  vpc_cidr_block  = var.vpc_cidr_block
  vpc_name        = var.vpc_name
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}
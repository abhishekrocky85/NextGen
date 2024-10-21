provider "aws" {
  region = "us-east-1"
}

module "vpc2" {
  source           = "./vpc2"
  vpc_cidr        = local.vpc2_cidr
  public_subnet1  = local.vpc2_public_subnet
  private_subnet1 = local.vpc2_private_subnet
  azs             = local.availability_zones
}
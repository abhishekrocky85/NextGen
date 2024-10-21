provider "aws" {
  region = "us-east-1"
}

module "peering" {
  source          = "./peering"
  vpc1_id        = module.vpc1.vpc_id
  vpc2_id        = module.vpc2.vpc_id
}
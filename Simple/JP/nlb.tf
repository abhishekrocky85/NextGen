provider "aws" {
  region = "us-east-1"
}

module "load_balancer" {
  source              = "./load_balancer"
  vpc_id              = module.vpc1.vpc_id
  public_subnet1_id  = module.vpc1.public_subnet1_id
  public_subnet2_id  = module.vpc1.public_subnet2_id
  az                 = local.availability_zones
}
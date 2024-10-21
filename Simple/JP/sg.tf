provider "aws" {
  region = "us-east-1"
}

module "security_group" {
  source = "./security_group"
  vpc_id = module.vpc1.vpc_id
}
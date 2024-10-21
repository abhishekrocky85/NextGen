provider "aws" {
  region = "us-east-1"
}

module "vpc1" {
  source           = "./vpc"
  vpc_cidr        = local.vpc1_cidr
  public_subnet1  = local.vpc1_public_subnet1
  public_subnet2  = local.vpc1_public_subnet2
  private_subnet1 = local.vpc1_private_subnet1
  private_subnet2 = local.vpc1_private_subnet2
  private_subnet3 = local.vpc1_private_subnet3
  azs             = local.availability_zones
}


module "load_balancer" {
  source              = "./load_balancer"
  vpc_id              = module.vpc1.vpc_id
  public_subnet1_id  = module.vpc1.public_subnet1_id
  public_subnet2_id  = module.vpc1.public_subnet2_id
  sg_id              = module.security_group.lb_security_group_id
  az                 = local.availability_zones
}

resource "aws_vpc_endpoint" "s3" {
  vpc_id = module.vpc1.vpc_id
  service_name = "com.amazonaws.${var.region}.s3"
}

resource "aws_vpc_endpoint" "acm" {
  vpc_id = module.vpc1.vpc_id
  service_name = "com.amazonaws.${var.region}.acm"
}

resource "aws_vpc_endpoint" "cloudwatch" {
  vpc_id = module.vpc1.vpc_id
  service_name = "com.amazonaws.${var.region}.logs"
}

resource "aws_vpc_endpoint" "postgresql" {
  vpc_id = module.vpc1.vpc_id
  service_name = "com.amazonaws.${var.region}.rds"
  vpc_endpoint_type = "interface"
  subnet_ids = [module.vpc1.private_subnet1_id]  # Replace with the appropriate subnet ID for your DB
  security_group_ids = [module.security_group.lb_security_group_id]  # Adjust as necessary
}

resource "aws_vpc_endpoint" "redis" {
  vpc_id = module.vpc1.vpc_id
  service_name = "com.amazonaws.${var.region}.elasticache"
  vpc_endpoint_type = "interface"
  subnet_ids = [module.vpc1.private_subnet2_id]  # Replace with the appropriate subnet ID for Redis
  security_group_ids = [module.security_group.lb_security_group_id]  # Adjust as necessary
}






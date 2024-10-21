locals {
  vpc1_cidr           = "10.0.0.0/16"
  vpc1_public_subnet1 = "10.0.1.0/24"
  vpc1_public_subnet2 = "10.0.2.0/24"
  vpc1_private_subnet1 = "10.0.3.0/24"
  vpc1_private_subnet2 = "10.0.4.0/24"
  vpc1_private_subnet3 = "10.0.5.0/24"
  
  vpc2_cidr           = "10.1.0.0/16"
  vpc2_public_subnet  = "10.1.1.0/24"
  vpc2_private_subnet = "10.1.2.0/24"

  availability_zones  = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

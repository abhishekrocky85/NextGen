variable "vpc_cidr" {
  description = "CIDR block for VPC 2"
  type        = string
}

variable "public_subnet" {
  description = "CIDR block for the public subnet in VPC 2"
  type        = string
}

variable "private_subnet" {
  description = "CIDR block for the private subnet in VPC 2"
  type        = string
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
}

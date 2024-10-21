variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet1" {
  description = "CIDR block for the first public subnet"
  type        = string
}

variable "public_subnet2" {
  description = "CIDR block for the second public subnet"
  type        = string
}

variable "private_subnet1" {
  description = "CIDR block for the first private subnet"
  type        = string
}

variable "private_subnet2" {
  description = "CIDR block for the second private subnet"
  type        = string
}

variable "private_subnet3" {
  description = "CIDR block for the third private subnet"
  type        = string
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "public_subnet1_id" {
  description = "Public Subnet 1 ID"
  type        = string
}

variable "public_subnet2_id" {
  description = "Public Subnet 2 ID"
  type        = string
}

variable "sg_id" {
  description = "Security Group ID for Load Balancer"
  type        = string
}

variable "vpc_cidr_block" {
    description = "CIDR block for the VPC"
    type        = string
}

variable "vpc_name" {
    description = "Name of the VPC"
    type        = string
}

variable "public_subnets" {
  type = list(object({
    cidr_block = string
    az         = string
    name       = string
  }))
}

variable "private_subnets" {
  type = list(object({
    cidr_block = string
    az         = string
    name       = string
  }))
}
variable "region" {
  description = "Region Name"
  type        = string
}

variable "aws_ami" {
  description = "AWS AMI"
  type        = string
}

variable "aws_instance_type" {
  description = "AWS Instance Type"
  type        = string
}

variable "instance_name" {
  description = "Name of the machine"
  type = string
}

variable "owner_name" {
  description = "Owner of the machine"
  type = string
}

variable "ec2_sg" {
  description = "Security Group ID for EC2 instances"
  type        = string
}

variable "project" {
  description = "Project Name"
  type        = string
}
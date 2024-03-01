variable "region" {
  type        = string
  default     = "us-east-1"
  description = "The AWS region where resources will be created."
}

variable "environment" {
  type        = string
  default     = "Development"
  description = "A name that will be included in the tags of all created resources to identify the environment."
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR block for the VPC."
}

variable "public_subnet_1_cidr" {
  type        = string
  description = "CIDR block for the first public subnet."
}

variable "public_subnet_2_cidr" {
  type        = string
  description = "CIDR block for the second public subnet."
}

variable "public_subnet_3_cidr" {
  type        = string
  description = "CIDR block for the third public subnet."
}

variable "private_subnet_1_cidr" {
  type        = string
  description = "CIDR block for the first private subnet."
}

variable "private_subnet_2_cidr" {
  type        = string
  description = "CIDR block for the second private subnet."
}

variable "private_subnet_3_cidr" {
  type        = string
  description = "CIDR block for the third private subnet."
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type for the Jenkins server."
}

variable "instance_ami" {
  type        = string
  description = "AMI ID for the EC2 instance."
}

variable "keyname" {
  type        = string
  description = "The name of the SSH key pair to attach to the EC2 instance."
}

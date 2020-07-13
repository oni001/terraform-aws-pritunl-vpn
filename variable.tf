variable "region" {
  description = "AWS region"
}

variable "aws_key_name" {
  description = "SSH keypair name for the VPN instance"
}

variable "vpc_id" {
  description = "Which VPC VPN server will be created in"
}

variable "public_subnet_id" {
  description = "One of the public subnet id for the VPN instance"
}

variable "instance_type" {
  description = "Instance type for VPN Box"
  type        = string
}


variable "whitelist_http" {
  description = "[List] Whitelist for HTTP port"
  type        = list(string)
}

variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}

variable "resource_name_prefix" {
  description = "All the resources will be prefixed with the value of this variable"
}

variable "internal_cidrs" {
  description = "[List] IP CIDRs to whitelist in the pritunl's security group"
  type        = list(string)
}

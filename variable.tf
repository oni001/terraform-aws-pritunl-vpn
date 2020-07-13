variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "aws_key_name" {
  description = "SSH keypair name for the VPN instance"
  default     = "test_1"
}

variable "vpc_id" {
  description = "Which VPC VPN server will be created in"
  default     = "vpc-0feaa645ae561cadc"
}

variable "public_subnet_id" {
  description = "One of the public subnet id for the VPN instance"
  default     = "subnet-01f433a96c6deae7f"
}

variable "instance_type" {
  description = "Instance type for VPN Box"
  type        = string
  default     = "t2.micro"
}

# variable "whitelist" {
#   description = "[List] Office IP CIDRs for SSH and HTTPS"
#   type        = list(string)
# }

variable "whitelist_http" {
  description = "[List] Whitelist for HTTP port"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}

variable "resource_name_prefix" {
  description = "All the resources will be prefixed with the value of this variable"
  default     = "pritunl"
}

variable "internal_cidrs" {
  description = "[List] IP CIDRs to whitelist in the pritunl's security group"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}
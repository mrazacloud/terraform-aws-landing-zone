variable "vpc_cidr" {
  type        = string
  description = "The CIDR block allocation vector for the VPC space."
}

variable "environment" {
  type        = string
  description = "Deployment tag descriptor (Prod/DR)."
}

variable "public_subnet_cidr" {
  type        = string
  description = "CIDR block for the isolated public tier subnet."
}

variable "private_subnet_cidr" {
  type        = string
  description = "CIDR block for the secure private tier subnet."
}

variable "availability_zone" {
  type        = string
  description = "Target AWS availability zone context."
}

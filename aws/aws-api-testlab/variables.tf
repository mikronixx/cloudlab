variable "name" {
  description = "Name prefix for all resources"
  type        = string
  default     = "test-platform"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "profile" {
  description = "AWS profile"
  type        = string
  default     = null
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "Availability zones"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "instance_count" {
  description = "Number of EC2 instances"
  type        = number
  default     = 3
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
  default     = null
}

variable "ssh_cidr" {
  description = "CIDR allowed to SSH (lock this down)"
  type        = string
  default     = "0.0.0.0/0"
}

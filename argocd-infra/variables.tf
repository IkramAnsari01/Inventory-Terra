variable "aws_region" {
  description = "AWS region for ArgoCD"
  type        = string
  default     = "ap-south-1"
}

variable "ami_id" {
  description = "Ubuntu 24.04 AMI for Mumbai"
  type        = string
  default     = "ami-0dee22c13ea7a9a67"
}

variable "instance_type" {
  type        = string
  default     = "t3.small" # ArgoCD is slightly lighter than a full Jenkins build server
}

variable "key_name" {
  description = "Name of the existing AWS Key Pair"
  type        = string
}

variable "web_port" {
  description = "ArgoCD UI Port"
  type        = number
  default     = 80
}

variable "root_volume_size" {
  description = "Size of the root volume in GB"
  type        = number
  default     = 20
}

variable "environment" {
  description = "The environment (e.g., dev, prod)"
  type        = string
  default     = "dev"
}
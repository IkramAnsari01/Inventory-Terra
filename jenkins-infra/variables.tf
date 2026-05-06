variable "aws_region" {
  description = "AWS region for Jenkins"
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
  default     = "t3.medium" # Recommended: Jenkins needs min 4GB RAM
}

variable "key_name" {
  description = "Name of the existing AWS Key Pair"
  type        = string
}

variable "my_ip" {
  description = "Your IP for SSH access (e.g. 103.x.x.x/32)"
  type        = string
  default     = "0.0.0.0/0"
}

variable "root_volume_size" {
  description = "Size of the root volume in GB"
  type        = number
  default     = 30
}

variable "environment" {
  description = "The environment (e.g., dev, prod)"
  type        = string
  default     = "dev"
}
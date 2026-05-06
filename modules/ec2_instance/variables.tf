variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance size"
  type        = string
  default     = "t3.medium" # Enough for Jenkins/ArgoCD
}

variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID where the security group will be created"
  type        = string
}

variable "web_port" {
  description = "The port to open for the application (8080 for Jenkins, 80 for ArgoCD)"
  type        = number
}

variable "my_ip" {
  description = "Your public IP address for SSH access (e.g., 1.2.3.4/32)"
  type        = string
  default     = "0.0.0.0/0" # Highly recommend changing this for security
}

variable "subnet_id" {
  description = "The VPC Subnet ID to launch in"
  type        = string
  # No default here, as it's better to explicitly provide it
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
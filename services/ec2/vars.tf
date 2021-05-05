variable "instance" {
  description = "The ec2 instance size you wish to create"
  default     = "t2.micro"
}

variable "instance1" {
  description = "The ec2 instance size you wish to create"
  default     = "m3.medium"
}

variable "instance_type" {
  description = "The ec2 instance size you wish to create"
  default = "t2.micro"
  type        = string
}

variable "region" { 
	default = "us-west-2"
}

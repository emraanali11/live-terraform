variable "cluster_name" {
  type    = string
  default = "test"
}

variable "region" {
  default = "us-west-2"
}

variable "instance_type" {
  description = "The ec2 instance size you wish to create"
  default     = "t2.micro"
  type        = string
}
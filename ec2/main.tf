terraform {
  backend "s3" {}
}

module "ec2" {
  source = "../../module/ec2/"
  instance_type = "${var.instance}"
}

module "ec21" {
  source = "../../module/ec2/"
  instance_type = "${var.instance1}"
}




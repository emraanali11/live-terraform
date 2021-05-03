terraform {
  backend "s3" {}
}
module "ec2" {
  source = "../../terraform_modules/ec2/"
  instance_type = "${var.instance}"
}

module "ec21" {
  source = "../../terraform_modules/ec2/"
  instance_type = "${var.instance1}"
}




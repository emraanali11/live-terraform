terraform {
  backend "s3" {}
  required_version = "0.11.14"
}
module "ec2" {
  source = "git::https://github.com/emraanali11/terraform_modules.git"
  instance_type = "${var.instance}"
}

module "ec21" {
  source = "git::https://github.com/emraanali11/terraform_modules.git"
  instance_type = "${var.instance1}"
}




terraform {
  backend "s3" {}
}
module "ec2" {
  source = "git::https://github.com/emraanali11/terraform_modules.git"
  instance_type = "${var.instance}"
}

module "ec21" {
  source = "git::https://github.com/emraanali11/terraform_modules.git"
  instance_type = "${var.instance1}"
}




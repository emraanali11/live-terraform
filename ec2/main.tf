terraform {
  backend "s3" {}
  required_version = ">= 0.12.17"
}
module "ec2" {
  source = "git::https://github.com/emraanali11/terraform_modules.git"
  instance_type = "var.instance"
}

module "ec21" {
  source = "git::https://github.com/emraanali11/terraform_modules.git"
  instance_type = "var.instance1"
}




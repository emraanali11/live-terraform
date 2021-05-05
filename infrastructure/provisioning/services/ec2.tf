module "ec2" {
  source        = "git::https://github.com/emraanali11/terraform_modules.git//ec2"
  instance_type = var.instance_type
}

module "ec21" {
  source        = "git::https://github.com/emraanali11/terraform_modules.git//ec2"
  instance_type = var.instance_type
}
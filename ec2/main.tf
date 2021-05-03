terraform {
  backend "s3" {}
  required_version = ">= 0.12.17"

}

provider "aws" {
  region = "${var.region}"
  }

module "ec2" {
  source        = "git::https://github.com/emraanali11/terraform_modules.git//ec2"
}

module "ec21" {
  source        = "git::https://github.com/emraanali11/terraform_modules.git//ec2"
}
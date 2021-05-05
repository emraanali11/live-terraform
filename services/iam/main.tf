terraform {
  backend "s3" {}
  required_version = ">= 0.12.17"

}

provider "aws" {
  region = "${var.region}"
  }

module "iam" {
  source        = "git::https://github.com/emraanali11/terraform_modules.git//iam"
  cluster_name = var.cluster_name
}
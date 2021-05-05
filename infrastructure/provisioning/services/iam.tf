terraform {
  backend "s3" {}
  required_version = ">= 0.12.17"

}

provider "aws" {
  region = "${var.region}"
  }

module "iam" {
  source        = "var.source"
  cluster_name = var.cluster_name
}
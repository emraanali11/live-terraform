terraform {
  backend "s3" {}
  required_version = ">= 0.12.17"

}

provider "aws" {
  region = "${var.region}"
}

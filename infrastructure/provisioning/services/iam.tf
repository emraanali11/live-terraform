module "iam" {
  source       = git::https://github.com/emraanali11/terraform_modules.git//iam
  cluster_name = var.cluster_name
}
# Terragrunt is a thin wrapper for Terraform that provides extra tools for working with multiple Terraform modules,
# remote state, and locking: https://github.com/gruntwork-io/terragrunt
terragrunt = {
  # Configure Terragrunt to automatically store tfstate files in an S3 bucket
  remote_state {
    backend = "s3"
    config {
      encrypt        = true
      bucket         = "terraform-k8-remote-state-imran2"
      key            = "${path_relative_to_include()}/terraform.tfstate"
      region         = "us-west-2"
      dynamodb_table = "terraform-lock-imran"
    }
  }
  # Configure root level variables that all resources can inherit
 terraform {
    # Force Terraform to keep trying to acquires a lock for up to 20 minutes if someone else already has the lock
      extra_arguments "init_input_false" {
        commands = ["init"]
        arguments = ["-input=false"]
      }
      extra_arguments "retry_lock" {
        commands  = ["${get_terraform_commands_that_need_locking()}"]
        arguments = ["-lock-timeout=20m"]
    }
  }
}


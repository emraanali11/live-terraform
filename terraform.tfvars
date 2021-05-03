terraform {
  extra_arguments "init_input_false" {
    commands  = ["init"]
    arguments = ["-input=false"]
  }
  extra_arguments "retry_lock" {
    commands  = get_terraform_commands_that_need_locking()
    arguments = ["-lock-timeout=20m"]
  }
}

remote_state {
  backend = "s3"
  config = {
    bucket         = "terraform-k8-remote-state-imran21"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "terraform-lock-imran"
  }
}

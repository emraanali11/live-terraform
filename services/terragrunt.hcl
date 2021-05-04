terraform  {
  extra_arguments "init_input_false" {
    commands  = ["init"]
    arguments = ["-input=false"]
  }
  extra_arguments "retry_lock"  {
    commands  = get_terraform_commands_that_need_locking()
    arguments = ["-lock-timeout=20m"]
  }
  extra_arguments "global_vars" {
        commands = ["${get_terraform_commands_that_need_locking()}"]
        required_var_files = [
          "${get_tfvars_dir()}/../env/ec2/${get_env("TF_VAR_env", "stage")}/env.tfvars",
          "${get_tfvars_dir()}/../env/ec2/${get_env("TF_VAR_env", "stage")}/${get_env("TF_VAR_cluster_name", "aws_staging")}.tfvars"
        ]
        }
}

remote_state  {
  backend = "s3"
  config = {
    bucket         = "terraform-k8-remote-state-imran21"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "terraform-lock-imran"
  }
}

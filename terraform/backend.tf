terraform {
  required_version = "1.3.3"
  backend "remote" {
    organization = "<your_terraform_cloud_org>"

    workspaces {
      name = "<your_tf_cloud_workspace>"
    }
  }
  required_providers {
    aws = ">= 3.52.0"
  }
}
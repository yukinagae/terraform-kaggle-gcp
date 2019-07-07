locals {
  credentials_file_path = "${var.credentials_path}"
}

/******************************************
  Provider configuration
 *****************************************/
provider "google" {
  credentials = "${file(local.credentials_file_path)}"
  version     = "~> 2.1"
}

provider "google-beta" {
  credentials = "${file(local.credentials_file_path)}"
  version     = "~> 2.1"
}

module "project-factory" {
  source                  = "terraform-google-modules/project-factory/google"
  random_project_id       = "true"
  name                    = "simple-sample-project"
  billing_account         = "${var.billing_account}"
  credentials_path        = "${local.credentials_file_path}"
  default_service_account = "${var.default_service_account}"
}

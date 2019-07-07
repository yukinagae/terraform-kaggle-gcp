variable "billing_account" {
  description = "The ID of the billing account to associate this project with"
}

variable "credentials_path" {
  description = "Path to a service account credentials file with rights to run the Project Factory. If this file is absent Terraform will fall back to Application Default Credentials."
  default     = ""
}

variable "default_service_account" {
  description = "Project default service account setting: (delete | depriviledge | keep)"
}


# empty back-end definition, full def in terragrunt.hcl
terraform {
  backend "s3" {}
}

variable "github_token" {
  type = string
  description = "Github personal access token"
}

variable "github_organization" {
  type = string
  description = "Github Organisation to deploy to"
  default = "gifkoek-org"
}

# Configure the GitHub Provider
provider "github" {
  token        = var.github_token
  organization = var.github_organization

}

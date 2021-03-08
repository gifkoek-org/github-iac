terraform {
  backend "s3" {
    #    profile        = "gifkoekorg"
    bucket         = "gifkoek-terraform-state"
    key            = "github/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraformstatelocking"
    encrypt        = true
  }
  required_providers {
    github = "~> 2.9.1"
    aws    = "~> 2.69"
  }
}

provider "aws" {
  #  profile = "gifkoekorg"
}

variable "github_token" {
  type        = string
  description = "Github personal access token"
  default     = "42a581e47f03f112b7dca8e9728bef0dab907061"
}

variable "github_organization" {
  type        = string
  description = "Github Organisation to deploy to"
  default     = "gifkoek-org"
}

# Configure the GitHub Provider
provider "github" {
  token        = var.github_token
  organization = var.github_organization

}

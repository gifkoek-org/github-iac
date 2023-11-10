terraform {
  backend "s3" {
    profile        = "gifkoekorg"
    bucket         = "gifkoek-terraform-state"
    key            = "github/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraformstatelocking"
    encrypt        = true
  }
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.4"
    }
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "gifkoekorg"
}

# Configure the GitHub Provider
provider "github" {
  token        = var.github_token
  organization = var.github_organization
}

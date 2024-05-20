module "fleetdm" {
  source                 = "git@github.com:gifkoek-org/terraform-modules.git//github-repo?ref=v0.7"
  name                   = "fleetdm"
  description            = "fleetdm setup on pi for home use"
  delete_branch_on_merge = true
  writer_teams = [
    "foobar",
  ]
  owner_teams = [
    "foobar",
  ]
  auto_init = true
}

module "okta-jwt" {
  source                 = "git@github.com:gifkoek-org/terraform-modules.git//github-repo?ref=v0.7"
  name                   = "okta-jwt"
  description            = "testing okta oauth apps with jwt"
  delete_branch_on_merge = true
  writer_teams = [
    "foobar",
  ]
  owner_teams = [
    "foobar",
  ]
  auto_init = true
}

module "githubprimer" {
  source                 = "git@github.com:gifkoek-org/terraform-modules.git//github-repo?ref=v0.7"
  name                   = "githubprimer"
  description            = "github intro repo"
  delete_branch_on_merge = true
  writer_teams = [
    "foobar",
  ]
  owner_teams = [
    "foobar",
  ]
  auto_init = true
}

module "aacorne-testing2" {
  source                 = "git@github.com:gifkoek-org/terraform-modules.git//github-repo?ref=v0.7"
  name                   = "aacorne-testing2"
  description            = "Testing repo creation with TF"
  primary_branch_name    = "master"
  delete_branch_on_merge = true
  writer_teams = [
    "foobar", "ownerteam"
  ]
  owner_teams = [
    "ownerteam",
  ]
  auto_init = false
  archived  = true
}

module "aws-testing" {
  source                 = "git@github.com:gifkoek-org/terraform-modules.git//github-repo?ref=v0.7"
  name                   = "aws-testing"
  description            = "aws-testing"
  primary_branch_name    = "master"
  delete_branch_on_merge = true
  writer_teams = [
    "foobar", "ownerteam"
  ]
  owner_teams = [
    "ownerteam",
  ]
  auto_init = false
  archived  = false
}

module "lambda-versioning-the-hard-way" {
  source                 = "git@github.com:gifkoek-org/terraform-modules.git//github-repo?ref=v0.7"
  name                   = "lambda-versioning-the-hard-way"
  description            = "Pipelines and CloudFormation template for safe-mode Lambda deploys without using SAM"
  primary_branch_name    = "master"
  delete_branch_on_merge = true
  writer_teams = [
    "foobar", "ownerteam"
  ]
  owner_teams = [
    "ownerteam",
  ]
  auto_init = false
  archived  = false
}

module "github-terraform-importer" {
  source                 = "git@github.com:gifkoek-org/terraform-modules.git//github-repo?ref=v0.7"
  name                   = "github-terrafom-importer"
  description            = "python script to get current github configuration and create terraform code for it"
  primary_branch_name    = "master"
  delete_branch_on_merge = true
  writer_teams           = ["foobar"]
  owner_teams            = ["foobar"]

  auto_init = true
  archived  = false
}

#module "esp8266" {
#  source      = "git@github.com:gifkoek-org/terraform-modules.git//github-repo?ref=v0.1"
#  name        = "esp8266"
#  description = "personal esp8266 projects"
#  writer_teams = [
#    "foobar", "ownerteam"
#  ]
#  owner_teams = [
#    "ownerteam",
#  ]
#  auto_init = false
#  archived  = false
#}
#
#module "aws-lambda-deployments" {
#  source      = "git@github.com:gifkoek-org/terraform-modules.git//github-repo?ref=v0.1"
#  name        = "aws-lambda-deployments"
#  description = "testing aws lambda codepipelines"
#  writer_teams = [
#    "foobar", "ownerteam"
#  ]
#  owner_teams = [
#    "ownerteam",
#  ]
#  auto_init = false
#  archived  = false
#}
#
#module "aws-lambda-deployments-safemode" {
#  source      = "git@github.com:gifkoek-org/terraform-modules.git//github-repo?ref=v0.1"
#  name        = "aws-lambda-deployments-safemode"
#  description = "Lambda deployments in safe mode"
#  writer_teams = [
#    "foobar", "ownerteam"
#  ]
#  owner_teams = [
#    "ownerteam",
#  ]
#  auto_init = false
#  archived  = false
#}
#
#module "ecs-refarch-cloudformation" {
#  source      = "git@github.com:gifkoek-org/terraform-modules.git//github-repo?ref=v0.1"
#  name        = "ecs-refarch-cloudformation"
#  description = "A reference architecture for deploying containerized microservices with Amazon ECS and AWS CloudFormation (YAML)"
#  writer_teams = [
#    "foobar", "ownerteam"
#  ]
#  owner_teams = [
#    "ownerteam",
#  ]
#  auto_init = false
#  archived  = false
#}
#
#module "codepipeline-simpleexample" {
#  source      = "git@github.com:gifkoek-org/terraform-modules.git//github-repo?ref=v0.1"
#  name        = "codepipeline-simpleexample"
#  description = "Simple test for basic CFN template with CodePipeline"
#  writer_teams = [
#    "foobar", "ownerteam"
#  ]
#  owner_teams = [
#    "ownerteam",
#  ]
#  auto_init = false
#  archived  = false
#}
#
#module "codepipeline-cfntemplate" {
#  source      = "git@github.com:gifkoek-org/terraform-modules.git//github-repo?ref=v0.1"
#  name        = "codepipeline-cfntemplate"
#  description = "CloudFormation template to build a CodePipeline"
#  writer_teams = [
#    "foobar", "ownerteam"
#  ]
#  owner_teams = [
#    "ownerteam",
#  ]
#  auto_init = false
#  archived  = false
#}
#
#module "pipeline-variable-replacer" {
#  source      = "git@github.com:gifkoek-org/terraform-modules.git//github-repo?ref=v0.1"
#  name        = "pipeline-variable-replacer"
#  description = "CodePipeline for a Lambda function to do Jinja-based variable replacement in CloudFormation YAML files"
#  writer_teams = [
#    "foobar", "ownerteam"
#  ]
#  owner_teams = [
#    "ownerteam",
#  ]
#  auto_init = false
#  archived  = false
#}
#
#module "variable-replacer" {
#  source      = "git@github.com:gifkoek-org/terraform-modules.git//github-repo?ref=v0.1"
#  name        = "variable-replacer"
#  description = "Lambda function to do Jinja-based variable replacement in CloudFormation YAML files"
#  writer_teams = [
#    "foobar", "ownerteam"
#  ]
#  owner_teams = [
#    "ownerteam",
#  ]
#  auto_init = false
#  archived  = false
#}
#
#module "cfn-nested-stacks-simpleexample" {
#  source      = "git@github.com:gifkoek-org/terraform-modules.git//github-repo?ref=v0.1"
#  name        = "cfn-nested-stacks-simpleexample"
#  description = "Simple example to test nested CFN stacks"
#  writer_teams = [
#    "foobar", "ownerteam"
#  ]
#  owner_teams = [
#    "ownerteam",
#  ]
#  auto_init = false
#  archived  = false
#}
#
#module "cfn-nested-stacks-pipeline" {
#  source      = "git@github.com:gifkoek-org/terraform-modules.git//github-repo?ref=v0.1"
#  name        = "cfn-nested-stacks-pipeline"
#  description = "Pipeline to automate deployment of nested CFN stacks"
#  writer_teams = [
#    "foobar", "ownerteam"
#  ]
#  owner_teams = [
#    "ownerteam",
#  ]
#  auto_init = false
#  archived  = false
#}
#
#module "private-APIgw-with-custom-dns" {
#  source      = "git@github.com:gifkoek-org/terraform-modules.git//github-repo?ref=v0.1"
#  name        = "private-APIgw-with-custom-dns"
#  description = ""
#  writer_teams = [
#    "foobar", "ownerteam"
#  ]
#  owner_teams = [
#    "ownerteam",
#  ]
#  auto_init = false
#  archived  = false
#}
#
#module "github-iac" {
#  source      = "git@github.com:gifkoek-org/terraform-modules.git//github-repo?ref=v0.1"
#  name        = "github-iac"
#  description = "Terraform IaC for Github"
#  writer_teams = [
#    "foobar", "ownerteam"
#  ]
#  owner_teams = [
#    "ownerteam",
#  ]
#  auto_init = false
#  archived  = false
#}
#

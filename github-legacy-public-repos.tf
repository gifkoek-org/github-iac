# ------------------------------
# legacy repos
# repos that existed before being terraformed, ie these were "terraform import"ed
# the module driving this has "auto_init = False"
# ------------------------------
module "github_repo_aws-lambda-deployments" {
  source           = "./modules/legacy-github-repo"
  repo_description = "testing aws lambda codepipelines"
  repo_name        = "aws-lambda-deployments"
  review_count     = 1
  writer_team      = github_team.foobar.id
  writer_team_slug = github_team.foobar.slug
  reader_team      = github_team.read_only.id
}

module "github_repo_aws-lambda-deployments-safemode" {
  source           = "./modules/legacy-github-repo"
  repo_description = "Lambda deployments in safe mode"
  repo_name        = "aws-lambda-deployments-safemode"
  review_count     = 1
  writer_team      = github_team.foobar.id
  writer_team_slug = github_team.foobar.slug
  reader_team      = github_team.read_only.id
}

module "github_repo_aws-testing" {
  source           = "./modules/legacy-github-repo"
  repo_description = "aws-testing"
  repo_name        = "aws-testing"
  review_count     = 1
  writer_team      = github_team.foobar.id
  writer_team_slug = github_team.foobar.slug
  reader_team      = github_team.read_only.id
}

module "github_repo_cfn-nested-stacks-pipeline" {
  source           = "./modules/legacy-github-repo"
  repo_description = "Pipeline to automate deployment of nested CFN stacks"
  repo_name        = "cfn-nested-stacks-pipeline"
  review_count     = 1
  writer_team      = github_team.foobar.id
  writer_team_slug = github_team.foobar.slug
  reader_team      = github_team.read_only.id
}

module "github_repo_cfn-nested-stacks-simpleexample" {
  source           = "./modules/legacy-github-repo"
  repo_description = "Simple example to test nested CFN stacks"
  repo_name        = "cfn-nested-stacks-simpleexample"
  review_count     = 1
  writer_team      = github_team.foobar.id
  writer_team_slug = github_team.foobar.slug
  reader_team      = github_team.read_only.id
}

module "github_repo_codepipeline-cfntemplate" {
  source           = "./modules/legacy-github-repo"
  repo_description = "CloudFormation template to build a CodePipeline"
  repo_name        = "codepipeline-cfntemplate"
  review_count     = 1
  writer_team      = github_team.foobar.id
  writer_team_slug = github_team.foobar.slug
  reader_team      = github_team.read_only.id
}

module "github_repo_codepipeline-simpleexample" {
  source           = "./modules/legacy-github-repo"
  repo_description = "Simple test for basic CFN template with CodePipeline"
  repo_name        = "codepipeline-simpleexample"
  review_count     = 1
  writer_team      = github_team.foobar.id
  writer_team_slug = github_team.foobar.slug
  reader_team      = github_team.read_only.id
}

module "github_repo_ecs-refarch-cloudformation" {
  source           = "./modules/legacy-github-repo"
  repo_description = "A reference architecture for deploying containerized microservices with Amazon ECS and AWS CloudFormation (YAML)"
  repo_name        = "ecs-refarch-cloudformation"
  review_count     = 1
  writer_team      = github_team.foobar.id
  writer_team_slug = github_team.foobar.slug
  reader_team      = github_team.read_only.id
}

module "github_repo_esp8266" {
  source           = "./modules/legacy-github-repo"
  repo_description = "personal esp8266 projects"
  repo_name        = "esp8266"
  review_count     = 1
  writer_team      = github_team.foobar.id
  writer_team_slug = github_team.foobar.slug
  reader_team      = github_team.read_only.id
}

module "github_repo_github-iac" {
  source           = "./modules/legacy-github-repo"
  repo_description = "Terraform IaC for Github"
  repo_name        = "github-iac"
  review_count     = 1
  writer_team      = github_team.foobar.id
  writer_team_slug = github_team.foobar.slug
  reader_team      = github_team.read_only.id
}

module "github_repo_lambda-versioning-the-hard-way" {
  source           = "./modules/legacy-github-repo"
  repo_description = "Pipelines and CloudFormation template for safe-mode Lambda deploys without using SAM"
  repo_name        = "lambda-versioning-the-hard-way"
  review_count     = 1
  writer_team      = github_team.foobar.id
  writer_team_slug = github_team.foobar.slug
  reader_team      = github_team.read_only.id
}

module "github_repo_pipeline-variable-replacer" {
  source           = "./modules/legacy-github-repo"
  repo_description = "CodePipeline for a Lambda function to do Jinja-based variable replacement in CloudFormation YAML files"
  repo_name        = "pipeline-variable-replacer"
  review_count     = 1
  writer_team      = github_team.foobar.id
  writer_team_slug = github_team.foobar.slug
  reader_team      = github_team.read_only.id
}

module "github_repo_private-APIgw-with-custom-dns" {
  source           = "./modules/legacy-github-repo"
  repo_description = ""
  repo_name        = "private-APIgw-with-custom-dns"
  review_count     = 1
  writer_team      = github_team.foobar.id
  writer_team_slug = github_team.foobar.slug
  reader_team      = github_team.read_only.id
}

module "github_repo_variable-replacer" {
  source           = "./modules/legacy-github-repo"
  repo_description = "Lambda function to do Jinja-based variable replacement in CloudFormation YAML files"
  repo_name        = "variable-replacer"
  review_count     = 1
  writer_team      = github_team.foobar.id
  writer_team_slug = github_team.foobar.slug
  reader_team      = github_team.read_only.id
}


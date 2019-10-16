# ------------------------------
# "new" repos
# repos that were natively created by Terraform
# the module driving this has "auto_init = True"
# ------------------------------
module "github_repo_aacorne-foobar2" {
  source           = "./modules/new-github-repo"
  repo_description = "Testing repo creation with TF"
  repo_name        = "aacorne-testing2"
  review_count     = 1
  writer_team      = github_team.foobar.id
  writer_team_slug = github_team.foobar.slug
  reader_team      = github_team.read_only.id
}

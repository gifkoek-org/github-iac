# -----------------------------
# module variables
# -----------------------------
variable "repo_name" {
  type = string
  description = "Friendly name for the repo"
}

variable "repo_description" {
  type = string
  description = "Description for the repo"
}

variable "review_count" {
  type = number
  description = "Number of required reviewers for a PR"
}

variable "writer_team" {
  type = string
  description = "Team name that can write to the repo"
}

variable "writer_team_slug" {
  type = string
  description = "Github team slug for the dismissal_teams attribute, this team can dismiss PRs"
}

variable "reader_team" {
  type = string
  description = "Team name that can read from the repo"
}

# -----------------------------
# module definition
# -----------------------------

# repo definition, most features are disabled
resource "github_repository" "github_repo" {
  name        = var.repo_name
  description = var.repo_description
  private     = false # should be true, but I don't have a paid-for org
  has_wiki    = false
  has_downloads = false
  has_issues  = false
  has_projects = false
  archived    = false
  auto_init = true  # init the repo with a master branch and README.md
}

# adds a team that can write to the repo
# currently a single value, but should be a list?
resource "github_team_repository" "writer_team" {
  repository = github_repository.github_repo.name
  team_id = var.writer_team
  permission = "push"
}

# adds a team that can read from the repo
resource "github_team_repository" "reader_team" {
  repository = github_repository.github_repo.name
  team_id = var.reader_team
  permission = "pull"
}

# set protection on the master branch
# settings are:
# - admins are not exemplt
# - stale reviews dismissed if a PR is updated
# - defined number of reviewers required
# - only writer team can dismiss
resource "github_branch_protection" "master" {
  branch = "master"
  repository = github_repository.github_repo.name
  enforce_admins = true

  required_pull_request_reviews {
    dismiss_stale_reviews = true
    required_approving_review_count = var.review_count
    require_code_owner_reviews = true
    dismissal_teams = [
      var.writer_team_slug
    ]
  }
}
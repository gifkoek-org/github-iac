
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

resource "github_repository" "github_repo" {
  name        = var.repo_name
  description = var.repo_description
  private     = false
  has_wiki    = false
  has_downloads = false
  has_issues  = false
  has_projects = false
  archived    = false
  auto_init = true
}

resource "github_branch_protection" "master" {
  branch = "master"
  repository = github_repository.github_repo.name
  enforce_admins = true

  required_pull_request_reviews {
    dismiss_stale_reviews = true
    required_approving_review_count = var.review_count
  }
}
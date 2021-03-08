variable "github_token" {
  type        = string
  description = "Github personal access token"
}

variable "github_organization" {
  type        = string
  description = "Github Organisation to deploy to"
  default     = "gifkoek-org"
}
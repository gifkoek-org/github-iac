# manages membership to the organisation, teams and team membership

# ---------------------------------------
# users invited to the organisation
# in production this would be driven by an IAM tool
# ---------------------------------------
resource "github_membership" "renier_rhode" {
  username = "renier-rhode"
  role     = "member"
}

resource "github_membership" "corne_vandyk" {
  username = "cornevandyk"
  role     = "admin"
}

resource "github_membership" "gifkoek_fargo" {
  username = "gifkoek-fargo"
  role     = "admin"
}

# ---------------------------------------
# team membership lists
# ---------------------------------------
locals {
  users_all = [
    "cornevandyk",
    "gifkoek-fargo",
    "renier-rhode"
  ]
  users_foobar = [
    "gifkoek-fargo",
    "renier-rhode"
  ]
}

# ---------------------------------------
# teams
# ---------------------------------------
resource "github_team" "foobar" {
  name        = "foobar"
  description = "testing team"
  privacy     = "closed"
}

resource "github_team" "read_only" {
  name        = "read_only"
  description = "read_only group for all organisation members"
  privacy     = "closed"
}

# ---------------------------------------
# team memberships
# ---------------------------------------
resource "github_team_membership" "read_only" {
  count    = length(local.users_all)
  team_id  = github_team.read_only.id
  username = local.users_all[count.index]
  role     = "member"
}

resource "github_team_membership" "team_foobar" {
  count    = length(local.users_foobar)
  team_id  = github_team.foobar.id
  username = local.users_foobar[count.index]
}
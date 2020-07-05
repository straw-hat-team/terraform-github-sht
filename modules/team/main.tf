resource "github_team" "team" {
  count   = var.team_enable ? 1 : 0
  name    = var.team_name
  privacy = "closed"
}

resource "github_team_membership" "membership" {
  for_each = toset(var.team_members)
  team_id  = github_team.team[0].id
  username = each.value
  role     = "member"
}

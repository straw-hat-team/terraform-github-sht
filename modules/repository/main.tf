resource "github_repository" "repository" {
  name                   = var.repository_name
  description            = var.repository_description
  private                = var.private
  topics                 = var.repository_topics
  has_projects           = false
  has_issues             = true
  has_wiki               = false
  allow_merge_commit     = false
  allow_squash_merge     = false
  allow_rebase_merge     = true
  auto_init              = true
  delete_branch_on_merge = true
  default_branch         = "master"
}

resource "github_team_repository" "team_repository" {
  count      = length(var.repository_teams)
  team_id    = var.repository_teams[count.index].id
  repository = github_repository.repository.id
  permission = "push"
}

resource "github_issue_label" "label" {
  for_each   = local.labels
  repository = github_repository.repository.name
  name       = each.value.name
  color      = each.value.color
}

resource "github_branch_protection" "branch_protection" {
  repository             = github_repository.repository.name
  branch                 = "master"
  enforce_admins         = true
  require_signed_commits = false

  required_status_checks {
    strict = true
  }

  required_pull_request_reviews {
    dismiss_stale_reviews      = true
    require_code_owner_reviews = false
    dismissal_teams            = values(local.repository_teams_map)
  }

  restrictions {
    users = []
    teams = []
    apps  = []
  }
}

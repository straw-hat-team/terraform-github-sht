resource "github_membership" "membership" {
  for_each = local.memberships
  username = each.key
  role     = each.value
}

resource "github_organization_block" "blocked_user" {
  for_each = var.blocked_users
  username = each.value
}

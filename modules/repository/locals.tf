locals {
  labels               = var.repository_labels
  repository_teams_map = { for i in var.repository_teams : i.id => i.slug }
}

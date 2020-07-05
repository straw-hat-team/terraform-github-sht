locals {
  default_labels = {
    stale_keep = {
      name  = "Stale: Keep"
      color = "25b1d7"
    }
    stale_discard = {
      name  = "Stale: Discard"
      color = "d74625"
    }
    cla_signed = {
      name  = "CLA: Signed"
      color = "009800"
    }
    cla_unsigned = {
      name  = "CLA: Unsigned"
      color = "E11D21"
    }
    priority_low = {
      name  = "Priority: Low"
      color = "009800"
    }
    priority_medium = {
      name  = "Priority: Medium"
      color = "FBCA04"
    }
    priority_high = {
      name  = "Priority: High"
      color = "EB6420"
    }
    priority_critical = {
      name  = "Priority: Critical"
      color = "E11D21"
    }
    status_abandoned = {
      name  = "Status: Abandoned"
      color = "000000"
    }
    status_accepted = {
      name  = "Status: Accepted"
      color = "009800"
    }
    status_available = {
      name  = "Status: Available"
      color = "BFE5BF"
    }
    status_blocked = {
      name  = "Status: Blocked"
      color = "E11D21"
    }
    status_completed = {
      name  = "Status: Completed"
      color = "006B75"
    }
    status_in_progress = {
      name  = "Status: In Progress"
      color = "CCCCCC"
    }
    status_on_hold = {
      name  = "Status: On Hold"
      color = "E11D21"
    }
    status_pending = {
      name  = "Status: Pending"
      color = "FEF2C0"
    }
    status_review_needed = {
      name  = "Status: Review Needed"
      color = "FBCA04"
    }
    status_revision_needed = {
      name  = "Status: Revision Needed"
      color = "E11D21"
    }
    type_bug = {
      name  = "Type: Bug"
      color = "E11D21"
    }
    type_maintenance = {
      name  = "Type: Maintenance"
      color = "FBCA04"
    }
    type_enhancement = {
      name  = "Type: Enhancement"
      color = "84B6EB"
    }
    type_question = {
      name  = "Type: Question"
      color = "CC317C"
    }
  }
  labels               = merge(local.default_labels, var.repository_labels)
  repository_teams_map = { for i in var.repository_teams : i.id => i.slug }
}

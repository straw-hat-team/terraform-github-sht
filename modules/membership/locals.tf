locals {
  admins      = { for i in var.admins : lower(i) => "admin" }
  members     = { for i in var.members : lower(i) => "member" }
  memberships = merge(local.admins, local.members)
}

variable "github_token" {
  type        = string
  description = "The GitHub API token."
}

variable "github_organization" {
  type        = string
  description = "The GitHub Organization slug name."
}

variable "blocked_users" {
  type        = set(string)
  default     = []
  description = "The list of usernames blocked from the GitHub organization."
}

variable "members" {
  type        = list(string)
  default     = []
  description = "A list of users to be added to your organization with member role. When applied, an invitation will be sent to the user to become part of the organization. When destroyed, either the invitation will be cancelled or the user will be removed."
}

variable "admins" {
  type        = list(string)
  default     = []
  description = "A list of users to be added to your organization with admin role. When applied, an invitation will be sent to the user to become part of the organization. When destroyed, either the invitation will be cancelled or the user will be removed."
}

variable "github_token" {
  type        = string
  description = "The GitHub API token."
}

variable "github_organization" {
  type        = string
  description = "The GitHub Organization slug name."
}

variable "team_enable" {
  type        = bool
  default     = true
  description = "Enable or Disable the team."
}

variable "team_members" {
  type        = list(string)
  default     = []
  description = "This list of members of the team."
}

variable "team_name" {
  type        = string
  description = "The team name."
}

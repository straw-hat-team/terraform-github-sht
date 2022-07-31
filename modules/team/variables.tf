variable "team_enable" {
  type        = bool
  default     = true
  description = "Enable or Disable the team."
}

variable "team_members" {
  type        = set(string)
  default     = []
  description = "This list of members of the team."
}

variable "team_name" {
  type        = string
  description = "The team name."
}

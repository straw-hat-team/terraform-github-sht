variable "github_token" {
  type        = string
  description = "The GitHub API token."
}

variable "github_organization" {
  type        = string
  description = "The GitHub Organization slug name."
}

variable "repository_name" {
  type        = string
  description = "The repository name."
}

variable "repository_description" {
  type        = string
  description = "The repository description."
}

variable "repository_topics" {
  type        = list(string)
  default     = []
  description = "List of labels for the repository."
}

variable "private" {
  type        = bool
  default     = true
  description = "Defines if the repository is private."
}

variable "repository_teams" {
  type = list(object({
    id   = string
    slug = string
  }))
  default     = []
  description = "List of teams with access to the repository."
}

variable "repository_labels" {
  type = map(object({
    name  = string
    color = string
  }))
  default     = {}
  description = "List of extra repository labels."
}

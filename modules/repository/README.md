# Repository

This module allows to manage GitHub repositories.

## Example usage

```hcl
module "rnd_team" {
  source              = "straw-hat-team/sht/github//modules/team"
  version             = "0.1.0"
  github_token        = "your github access token"
  github_organization = "my-org"
  team_name           = "rnd"
  team_members        = ["username1", "username2"]
}

module "example_repository" {
  source                 = "straw-hat-team/sht/github//modules/repository"
  version                = "0.1.0"
  github_token           = "your github access token"
  github_organization    = "my-org"
  repository_name        = "example_repo"
  repository_description = "Example app"
  private                = false
  repository_teams       = [
    # Use team module to create the teams first
    module.rnd_team.team[0]
  ]
}
```

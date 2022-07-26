# Repository

This module allows to manage GitHub repositories.

## How-to Guides

### Create a repository

1. Create or find a GitHub Access Token and configure the GitHub provider.

    ```hcl
    provider "github" {
      token = var.github_token
      owner = "my-org-name"
    }
    ```

2. Create a team that will be added to the repository

    ```hcl
    module "rnd_team" {
      source              = "straw-hat-team/sht/github//modules/team"
      version             = "0.1.0"
      github_token        = "your github access token"
      github_organization = "my-org"
      team_name           = "rnd"
      team_members        = ["username1", "username2"]
    }
    ```

3. Configure the module, for example:

    ```hcl
    module "example_repository" {
      source                 = "straw-hat-team/sht/github//modules/repository"
      version                = "0.1.0"
      github_token           = "your github access token"
      github_organization    = "my-org"
      repository_name        = "example_repo"
      repository_description = "Example app"
      private                = false
      repository_teams       = [
        # `module.rnd_team` that we created in the previous step
        module.rnd_team.team[0]
      ]
    }
    ```

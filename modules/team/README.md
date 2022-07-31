# Team

This module allows to manage GitHub teams.

## How-To Guides

### Add a team to an organization

1. Create or find a GitHub Access Token and configure the GitHub provider.

    ```hcl
    provider "github" {
      token = var.github_token
      owner = "my-org-name"
    }
    ```

2. Configure the module, for example:

    ```hcl
    module "rnd_team" {
      source              = "straw-hat-team/sht/github//modules/team"
      version             = "0.1.0"

      team_name           = "rnd"
      team_members        = ["username1", "username2"]
    }
    ```

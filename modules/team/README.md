# Team

This module allows to manage GitHub teams.

## How-To Guides

### Add a team to an organization

1. Create or find a GitHub Access Token.
2. Configure the module, for example:

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

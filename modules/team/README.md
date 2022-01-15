# Team

This module allows to manage GitHub teams.

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
```

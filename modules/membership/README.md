# Membership

This module allows you to manage GitHub memberships.

## Example usage

```hcl
module "my_org_membership" {
  source              = "straw-hat-team/sht/github//modules/membership"
  version             = "0.1.0"
  github_token        = "your github access token"
  github_organization = "my-org"
  admins              = ["SomeAdmin"]
  members             = ["SomeUser"]
  blocked_users       = ["SomeBlockedUsername"]
}
```

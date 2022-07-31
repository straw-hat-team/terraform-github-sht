# Membership

This module allows to manage GitHub memberships.

## How-To Guides

### Add memberships to an organization

1. Create or find a GitHub Access Token and configure the GitHub provider.

    ```hcl
    provider "github" {
      token = var.github_token
      owner = "my-org-name"
    }
    ```

2. Configure the module, for example:

    ```hcl
    module "my_org_membership" {
      source              = "straw-hat-team/sht/github//modules/membership"
      version             = "0.1.0"

      admins              = ["SomeAdmin"]
      members             = ["SomeUser"]
      blocked_users       = ["SomeBlockedUsername"]
    }
    ```

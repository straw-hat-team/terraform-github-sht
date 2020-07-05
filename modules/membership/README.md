# Membership

This module allows you to manage GitHub memberships.

## Requirements

| Name   | Version  |
| ------ | -------- |
| github | ~> 2.9.1 |

## Providers

| Name   | Version  |
| ------ | -------- |
| github | ~> 2.9.1 |

## Inputs

| Name                 | Description                                                                                                                                                                                                                                      | Type           | Default | Required |
| -------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------- | ------- | :------: |
| github\_organization | The GitHub Organization slug name.                                                                                                                                                                                                               | `string`       | n/a     |   yes    |
| github\_token        | The GitHub API token.                                                                                                                                                                                                                            | `string`       | n/a     |   yes    |
| admins               | A list of users to be added to your organization with admin role. When applied, an invitation will be sent to the user to become part of the organization. When destroyed, either the invitation will be cancelled or the user will be removed.  | `list(string)` | `[]`    |    no    |
| blocked\_users       | The list of usernames blocked from the GitHub organization.                                                                                                                                                                                      | `set(string)`  | `[]`    |    no    |
| members              | A list of users to be added to your organization with member role. When applied, an invitation will be sent to the user to become part of the organization. When destroyed, either the invitation will be cancelled or the user will be removed. | `list(string)` | `[]`    |    no    |

## Outputs

No output.

# Team

This module allows you to manage GitHub teams.

## Requirements

| Name   | Version  |
| ------ | -------- |
| github | ~> 2.9.1 |

## Providers

| Name   | Version  |
| ------ | -------- |
| github | ~> 2.9.1 |

## Inputs

| Name                 | Description                        | Type           | Default | Required |
| -------------------- | ---------------------------------- | -------------- | ------- | :------: |
| github\_organization | The GitHub Organization slug name. | `string`       | n/a     |   yes    |
| github\_token        | The GitHub API token.              | `string`       | n/a     |   yes    |
| team\_name           | The team name.                     | `string`       | n/a     |   yes    |
| team\_enable         | Enable or Disable the team.        | `bool`         | `true`  |    no    |
| team\_members        | This list of members of the team.  | `list(string)` | `[]`    |    no    |

## Outputs

| Name | Description                                                                                                                                     |
| ---- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| team | The team created. Visit https://www.terraform.io/docs/providers/github/r/team.html#attributes-reference for more information about this object. |

# Repository

This module allows you to manage GitHub repositories.

## Requirements

| Name   | Version  |
| ------ | -------- |
| github | ~> 2.9.1 |

## Providers

| Name   | Version  |
| ------ | -------- |
| github | ~> 2.9.1 |

## Inputs

| Name                    | Description                                  | Type                                                                         | Default | Required |
| ----------------------- | -------------------------------------------- | ---------------------------------------------------------------------------- | ------- | :------: |
| github\_organization    | The GitHub Organization slug name.           | `string`                                                                     | n/a     |   yes    |
| github\_token           | The GitHub API token.                        | `string`                                                                     | n/a     |   yes    |
| repository\_description | The repository description.                  | `string`                                                                     | n/a     |   yes    |
| repository\_name        | The repository name.                         | `string`                                                                     | n/a     |   yes    |
| private                 | Defines if the repository is private.        | `bool`                                                                       | `true`  |    no    |
| repository\_labels      | List of extra repository labels.             | <pre>map(object({<br>    name  = string<br>    color = string<br>  }))</pre> | `{}`    |    no    |
| repository\_teams       | List of teams with access to the repository. | <pre>list(object({<br>    id   = string<br>    slug = string<br>  }))</pre>  | `[]`    |    no    |
| repository\_topics      | List of labels for the repository.           | `list(string)`                                                               | `[]`    |    no    |

## Outputs

| Name       | Description                                                                                                                                       |
| ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| repository | The repository. Visit https://www.terraform.io/docs/providers/github/r/repository.html#argument-reference for more information about this object. |

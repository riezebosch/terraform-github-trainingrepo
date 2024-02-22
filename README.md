# GitHub Repository for Training

Create a repository to be used by students in a training environment.

## Auth

The vast majority is created using the [`integrations/github`](https://registry.terraform.io/providers/integrations/github/) provider which
taps into [`gh cli`](https://cli.github.com/) for authentication. Only there's currently a bug in the
`github_rest_api` data source which makes it impossible to read the commenters from the created issue. Therefor you now also need to set
the `GITHUB_TOKEN` environment variable.

## Setup

```terraform
module "repository" {
  source     = "riezebosch/training-repository/github"
  version    = "0.0.6"
  repository = "temp"
  template = {
    owner      = "proscrumdev"
    repository = "battleship-dotnet"
  }
}
```

## Apply

```shell
terraform init
terraform apply -auto-approve
```

## Comment

Students should comment on the issue that is created in the designated repository.

## Invite

Apply the same configuration again to invite the students that commented
as collaborator to this repository.

```shell
terraform apply -auto-approve
```

## Destroy

When done, destroy all resources.

```shell
terraform destroy -auto-approve
```

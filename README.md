# GitHub Repository for Training

Create a repository to be used by students in a training environment.

## Setup

```terraform
module "repository" {
  source     = "riezebosch/training-repository/github"
  version    = "0.0.5"
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

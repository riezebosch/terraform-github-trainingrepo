resource "github_issue" "collaborators" {
  repository = github_repository.this.name
  title      = "Add collaborators to this repo"
  body       = <<EOT
## Comment below to be added as a collaborator

We will all be using this repository today. Even though it's public right now, you will not be able to make changes until you're given the correct permissions. We've automated this process via the GitHub API. Once you comment, we will add you as a collaborator.

You'll start to receive a lot of emails. (❗) You can slow these down immediately by clicking the **Unwatch** button at the top of the page and selecting either the **Participating and @mentions** or **Ignore** option.
EOT
}

resource "github_issue" "issues" {
  for_each = {
    for index, issue in var.issues : issue.title => issue
  }
  repository = github_repository.this.name
  title      = each.value.title
  body       = each.value.body
}

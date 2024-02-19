resource "github_repository" "this" {
  name       = var.repository
  visibility = "public"
  has_issues = true

  template {
    owner                = var.template.owner
    repository           = var.template.repository
    include_all_branches = false
  }
}

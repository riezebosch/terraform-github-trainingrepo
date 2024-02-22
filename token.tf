data "env_variable" "github_token" {
  name = "GITHUB_TOKEN"
  lifecycle {
    postcondition {
      condition     = self.value != ""
      error_message = "GITHUB_TOKEN must be set (until the data source is fixed)"
    }
  }
}

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.5.0"
    }

    value = {
      source  = "pseudo-dynamic/value"
      version = "0.5.1"
    }
  }

  required_version = ">=1.5.7"
}

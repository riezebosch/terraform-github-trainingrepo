terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.0.0"
    }

    value = {
      source  = "pseudo-dynamic/value"
      version = "0.5.1"
    }

    env = {
      source  = "tchupp/env"
      version = "0.0.2"
    }

    http = {
      source  = "hashicorp/http"
      version = "3.4.1"
    }
  }

  required_version = ">=1.5.7"
}

variable "repository" {
  type        = string
  description = "name of the target repository"
}

variable "template" {
  type = object({
    owner      = string
    repository = string
  })
  description = "configuration for the template repository"
}

variable "issues" {
  type = list(object({
    title = string
    body  = string
  }))
  default = []
}

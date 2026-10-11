variable "project_service_account_secrets" {
  description = <<EOT
Map of project_service_account_secrets, attributes below
Required:
    - client_id
    - project_id
Optional:
    - secret_expires_after_hours
EOT

  type = map(object({
    client_id                  = string
    project_id                 = string
    secret_expires_after_hours = optional(number)
  }))
}


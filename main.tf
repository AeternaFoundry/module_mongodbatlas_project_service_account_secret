resource "mongodbatlas_project_service_account_secret" "project_service_account_secrets" {
  for_each = var.project_service_account_secrets

  client_id                  = each.value.client_id
  project_id                 = each.value.project_id
  secret_expires_after_hours = each.value.secret_expires_after_hours
}


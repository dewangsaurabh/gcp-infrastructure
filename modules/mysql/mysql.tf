resource "google_sql_database_instance" "master" {
  name             = var.sql_name
  database_version = var.database_version
  region           = var.region

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = var.tier
  }

  deletion_protection = true
  depends_on = [
    google_project_service.project,
  ]
}

resource "google_sql_database" "database" {
  name     = var.database_name
  instance = google_sql_database_instance.master.name
}

resource "google_sql_user" "users" {
  name     = var.database_user
  instance = google_sql_database_instance.master.name
  password = "petclinic" 
}

resource "google_project_service" "project" {
  service = "sqladmin.googleapis.com"

  disable_dependent_services = true
}
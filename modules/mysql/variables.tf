variable "sql_name" {
  description = "Name of cloud sql instance"
}

variable "database_version" {
  description = "Databse version to be created"
}

variable "region" {
  description = "region where to be created"
}

variable "tier" {
  description = "Machine type of database"
}

variable "database_name" {
  description = "Databse name to be created"
}

variable "database_user" {
  description = "Database user"
}
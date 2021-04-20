variable "project_id" {
  type        = string
  description = "The GCP project ID"
  default     = null
}

variable "region" {
  type        = string
  description = "Region where the instance template should be created."
  default     = null
}

variable "zone" {
  type        = string
  description = "zone where the instance template should be created."
  default     = null
}

variable "network" {
  type        = string
  description = "vpc network name"
  default     = null
}

variable "name" {
  description = "Name of instance"
  default     = "default-instance"
}

variable "machine_type" {
  description = "Machine type to create, e.g. n1-standard-1"
  default     = "n1-standard-1"
}

variable "tags" {
  type        = list(string)
  description = "Network tags, provided as a list"
  default     = []
}


#######
# disk
#######
variable "source_image" {
  description = "Source disk image. If neither source_image nor source_image_family is specified, defaults to the latest public CentOS image."
  default     = ""
}

variable "boot_size" {
  description = "Boot disk size in GB"
  default     = "100"
}

#######
# Persistent disk
#######

variable "disk_name" {
  description = "Source disk image. If neither source_image nor source_image_family is specified, defaults to the latest public CentOS image."
  default     = ""
}

variable "disk_type" {
  description = "Boot disk size in GB"
  default     = ""
}

variable "disk_size" {
  type = number
  description = "Boot disk size in GB"
  default     = null
}

#######
# GKE Parameters
#######

variable "cluster_name" {
  description = "Name of cluster to be created"
}

variable "node_pool_name" {
  description = "Name of node pool to be created"
}

variable "node_machine_type" {
  description = "Node Machine Type"
  default = "e2-medium"
}

#######
# SQL Instance
#######

variable "sql_name" {
  description = "Name of cloud sql instance"
}

variable "database_version" {
  description = "Databse version to be created"
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


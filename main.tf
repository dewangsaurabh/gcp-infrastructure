module "jenkins" {
  source                  = ".//modules/jenkins/"
  name                    = var.name //"terraform-instance"
  machine_type            = var.machine_type //"n1-standard-1"
  zone                    = var.zone //"europe-west2-c"
  tags                    = var.tags //["foo", "bar"]
  source_image            = var.source_image
  boot_size               = var.boot_size
  network                 = var.network
}

module "gke" {
  source                 = ".//modules/gke/"
  cluster_name           = var.cluster_name
  zone                   = var.zone
  node_pool_name         = var.node_pool_name
  node_machine_type      = var.node_machine_type

}

module "mysql" {
  source                = ".//modules/mysql/"
  sql_name              = var.sql_name
  database_version      = var.database_version
  region                = var.region
  tier                  = var.tier
  database_name         = var.database_name
  database_user         = var.database_user
}
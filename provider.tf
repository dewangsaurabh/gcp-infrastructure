provider "google" {
  credentials = "F:/Study/petclinic/batmanbegins-7cae132bc101.json"
  project     = "batmanbegins" //"project_id"
  region      = var.region //"europe-west2"
  zone        = var.zone //"europe-west2-c"
}
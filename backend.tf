terraform {
  backend "gcs" {
    bucket  = "tfstate-petclinic"
    prefix  = "terraform/state"
    credentials = "F:/Study/petclinic/batmanbegins-7cae132bc101.json"
  }
}
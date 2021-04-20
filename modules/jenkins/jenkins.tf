resource "google_compute_instance" "terraform-instance" {
  name         = var.name //"terraform-instance"
  machine_type = var.machine_type //"n1-standard-1"
  zone         = var.zone //"europe-west2-c"

  tags = var.tags //["foo", "bar"]

   metadata = {
    startup-script = file("${path.module}/../../files/ansible.sh")
  }

  boot_disk {
    initialize_params {
      image = var.source_image //"debian-cloud/debian-9"
      size = var.boot_size
    }
  }

  network_interface {
    network = var.network

    access_config {
      // Ephemeral IP
    }
  }
  service_account {
    scopes = ["cloud-platform"]
  }
}
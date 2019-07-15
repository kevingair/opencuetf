## Add compute and DB resources

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "f1-micro"
  project = "${var.project}"
  zone = "${var.zone}"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    # A default network is created for all GCP projects
    network       = "default"
    access_config {
    }
  }
  }

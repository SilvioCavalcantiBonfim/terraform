data "google_compute_image" "img" {
  family  = "debian-11"
  project = "debian-cloud"
}

resource "google_compute_instance" "vm" {
  name         = "vm-terraform"
  machine_type = "n1-standard-1"
  zone         = "southamerica-east1-a"

  boot_disk {
    initialize_params {
      image = data.google_compute_image.img.self_link
    }
  }

  network_interface {
    network    = data.terraform_remote_state.vpc.outputs.vpc_name
    subnetwork = data.terraform_remote_state.vpc.outputs.subnet_name
    access_config {}
  }

  metadata = {
    ssh-keys = "user:${file("./gcp-key.key.pub")}"
  }
}
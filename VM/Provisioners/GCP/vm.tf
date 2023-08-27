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
    ssh-keys = "user:${file("./gcp.key.pub")}"
  }

  provisioner "local-exec" {
    command = "echo ${self.network_interface[0].access_config[0].nat_ip} >> public_ip.txt"
  }

  connection {
    type        = "ssh"
    user        = "user"
    private_key = file("./gcp.key")
    host        = self.network_interface[0].access_config[0].nat_ip
  }

  provisioner "file" {
    content     = "public_ip: ${self.network_interface[0].access_config[0].nat_ip}"
    destination = "/tmp/public_ip.txt"
  }

  provisioner "file" {
    source      = "./test.txt"
    destination = "/tmp/example.txt"
  }


  provisioner "remote-exec" {
    inline = [
      "echo name: ${self.name} >> /tmp/name.txt"
    ]
  }
}
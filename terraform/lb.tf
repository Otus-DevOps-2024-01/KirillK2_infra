
resource "yandex_compute_instance" "lb" {
  name = "loadbalance"
  zone = var.zone_instance
  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }

  connection {
    type        = "ssh"
    host        = yandex_compute_instance.lb.network_interface.0.nat_ip_address
    user        = "ubuntu"
    agent       = false
    private_key = file(var.private_key_path)
  }

  provisioner "local-exec" {
    command = "bash files/get_public_ip.sh"
  }

  provisioner "file" {
    source      = "/tmp/lb_host.local"
    destination = "/tmp/lb_host.txt"
  }

  provisioner "file" {
    source      = "/tmp/app_host.local"
    destination = "/tmp/app_host.txt"
  }
  # terraform goes loop mode and doesn't complete this part
  #   provisioner "remote-exec" {
  #     script = "files/deploy-lb.sh"
  #   }

}

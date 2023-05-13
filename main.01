resource "huaweicloud_compute_instance" "terra001" {
  name             = "BID-TERRA01"
  image_id         = "ecfd3c3d-5b1e-4759-96c9-c4cdb3c54af6"
  flavor_name      = "s6.medium.2"
  security_groups  = ["LAN"]
  system_disk_type = "SAS"
  network {
    uuid = "c8afe385-7b79-48fd-9c9b-842b3713d4ed"
  }
  user_data = <<-EOF
              #!/bin/bash
              echo "Hola Terraformers!" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF
}


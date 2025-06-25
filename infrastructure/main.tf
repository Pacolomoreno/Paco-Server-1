resource "hcloud_server" "SP1" {
    name = "Server-Paco-1"
    server_type = "cpx11"
    location = "hel1"
    image = "debian-12"

    ssh_keys = [  hcloud_ssh_key.paco_ssh.id]
}

resource "hcloud_ssh_key" "paco_ssh" {
  name = "paco_ssh"
  public_key = var.paco_ssh_key
}

variable "paco_ssh_key" {
    type = string  
}

output "SP1" {
    value = hcloud_server.SP1.ipv4_address  
}
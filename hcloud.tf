
terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"

    }
  }
}

provider "hcloud" {
    token = "${var.token}"
}

resource "hcloud_server" "smane" {
  name        = "smane1"
  image       = "ubuntu-22.04"
  server_type = "cx11"
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
  
  ssh_keys = "${var.ssh_keys_name}"
  location = "nbg1"
}
resource "digitalocean_droplet" "node" {
    image = "centos-7-x64"
    count = var.nodes_count
    name = "node-${count.index+1}"
    region = "fra1"
    size = "s-2vcpu-4gb"
    private_networking = true
    ssh_keys = [
      var.ssh_fingerprint
    ]

    connection {
        host = self.ipv4_address
        user = "root"
        type = "ssh"
        private_key = file(var.pvt_key)
        timeout = "2m"
    }
}

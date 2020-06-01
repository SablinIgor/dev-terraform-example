resource "digitalocean_tag" "k8s" {
    name = "k8s"
}

resource "digitalocean_droplet" "node" {
    image = "centos-7-x64"
    count = var.nodes_count
    name = "node-${count.index+1}"
    region = "fra1"
    size = "s-4vcpu-8gb"
    private_networking = true
    tags = ["${digitalocean_tag.k8s.name}"]
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

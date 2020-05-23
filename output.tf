output "hostname" {
    value = "${join("\n", digitalocean_droplet.node.*.name)}"
}

output "ip" {
    value = "${join("\n", digitalocean_droplet.node.*.ipv4_address)}"
}

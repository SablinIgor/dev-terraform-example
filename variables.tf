variable do_token {
  description = "Personal DO token"
}
variable pub_key {
  description = "Public secret key"

  # Значение по умолчанию
  default = "~/.ssh/k8s-do.pub"
}
variable pvt_key {
  description = "Private secret key"

  # Значение по умолчанию
  default = "~/.ssh/k8s-do"
}
variable ssh_fingerprint {
  description = "SSH fingerprint"

  # Значение по умолчанию
  default = "51:a7:c4:73:94:f2:cf:00:66:1b:90:a7:b9:cc:42:e8"
}

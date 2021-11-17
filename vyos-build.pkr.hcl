build {
  name = "vyos"
  sources = [ "vsphere-iso.vyos" ]

  provisioner "shell" {
    scripts           = [
      "${path.root}/provisioners/configure.sh"
    ]
  }

  post-processor "manifest" {
    output = "./${source.name}-manifest.json"
  }
}

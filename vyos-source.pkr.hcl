source "vsphere-iso" "vyos" {
  vcenter_server       = var.vcenter_hostname
  insecure_connection  = var.vcenter_insecure
  username             = var.vcenter_username
  password             = var.vcenter_password
  cluster              = var.cluster_name
  folder               = var.vm_folder
  datastore            = var.cluster_datastore

  CPUs                 = var.vm_cpu_count
  RAM                  = var.vm_ram
  disk_controller_type = [ "pvscsi" ]
  firmware             = var.vm_firmware
  guest_os_type        = var.vm_guest_type
  vm_name              = "${var.vm_name}-${var.vm_version}"
  vm_version           = var.vm_hardware_version
  convert_to_template  = var.template_convert

  ssh_password         = var.vm_admin_password
  ssh_username         = var.vm_admin_username
  ssh_port             = var.vm_ssh_port
  shutdown_command     = "echo '${var.vm_admin_password}' | sudo -S /sbin/halt -h -p"

  iso_checksum         = "file:${var.installer_iso_url}/${var.installer_iso_filename}.sha256"
  iso_url              = "${var.installer_iso_url}/${var.installer_iso_filename}"
  boot_wait            = "60s"
  boot_command         = [
                           "<enter><wait>",
                           "vyos<enter><wait>",
                           "vyos<enter><wait>",
                           "install image<enter><wait>",
                           "<enter><wait>",
                           "<enter><wait>",
                           "<enter><wait>",
                           "Yes<enter><wait10>",
                           "<enter><wait10>",
                           "<enter><wait10>",
                           "<enter><wait10>",
                           "vyos<enter><wait5>",
                           "vyos<enter><wait5>",
                           "<enter><wait10>",
                           "reboot<enter><wait10>",
                           "Yes<enter><wait10><wait10><wait10><wait10><wait10><wait10>",
                           "vyos<enter><wait>",
                           "vyos<enter><wait>",
                           "configure<enter><wait>",
                           "set interfaces ethernet eth0 address dhcp<enter><wait>",
                           "set service ssh port 22<enter><wait>",
                           "commit<enter><wait>",
                           "save<enter><wait>",
                           "exit<enter><wait>",
                           "reboot<enter><wait>",
                           "yes<enter><wait10><wait10><wait10><wait10><wait10>"
                         ]

  export {
    images                = var.export_images
    force                 = var.export_force
    output_directory      = "${var.export_directory}/${var.vm_name}-${var.vm_version}"
  }
  
  network_adapters {
    network               = var.vm_network
    network_card          = var.vm_network_card
  }

  storage {
    disk_size             = var.vm_disk_size
    disk_thin_provisioned = var.vm_disk_thinprov
  }
}

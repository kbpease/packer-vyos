variable "cluster_datastore" {
  type    = string
  default = "datastore"
}

variable "cluster_name" {
  type    = string
  default = "Cluster"
}

variable "export_force" {
  type    = bool
  default = true
}

variable "export_images" {
  type    = bool
  default = false
}

variable "export_directory" {
  type    = string
  default = "./builds"
}

variable "installer_iso_filename" {
  type    = string
  default = "vyos-1.4-rolling-202111171157-amd64.iso"
}

variable "installer_iso_url" {
  type    = string
  default = "https://downloads.vyos.io/rolling/current/amd64"
}

variable "template_convert" {
  type    = bool
  default = true
}

variable "vcenter_hostname" {
  type    = string
  default = "vcenter.example.com"
}

variable "vcenter_insecure" {
  type    = bool
  default = true
}

variable "vcenter_password" {
  type      = string
  default   = "${env("PACKER_VCENTER_PASSWORD")}"
  sensitive = true
}

variable "vcenter_username" {
  type      = string
  default   = "${env("PACKER_VCENTER_USERNAME")}"
  sensitive = true
}

variable "vm_admin_password" {
  type    = string
  default = "vyos"
}

variable "vm_admin_username" {
  type    = string
  default = "vyos"
}

variable "vm_cpu_count" {
  type    = number
  default = 1
}

variable "vm_disk_size" {
  type    = number
  default = 32768
}

variable "vm_disk_thinprov" {
  type    = bool
  default = true
}

variable "vm_firmware" {
  type    = string
  default = "efi"
}

variable "vm_folder" {
  type    = string
  default = "Templates"
}

variable "vm_guest_type" {
  type    = string
  default = "debian10_64Guest"
}

variable "vm_hardware_version" {
  type    = number
  default = 13
}

variable "vm_name" {
  type    = string
  default = "vyos"
}

variable "vm_network" {
  type    = string
  default = "VM Network"
}

variable "vm_network_card" {
  type    = string
  default = "vmxnet3"
}

variable "vm_ram" {
  type    = number
  default = 2048
}

variable "vm_ssh_port" {
  type    = number
  default = 22
}

variable "vm_version" {
  type    = string
  default = "1"
}

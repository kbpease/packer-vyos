# Packer variable value overrides for vyos router

# vCenter Placement
vcenter_hostname="my-vcenter.example.net"
cluster_name="OakTrees"
cluster_datastore="the-acorn-cache"
vm_network="skwirrel-net"
vm_name="nuts-for-networking"

# Not advisable to do this here, but... you do you.
# Default is to pull these from ENV variables - see README.
vcenter_username="skwirrel@vsphere.local"
vcenter_password="super-sekrit-password"

# Some useful and meaningful version string
vm_version="1.111.1111111"

# And, accept the default values set in vyos-variables.pkr.hcl for:
#   export_directory
#   export_force
#   export_images
#   installer_iso_filename
#   installer_iso_url
#   template_convert
#   vcenter_insecure
#   vm_admin_password
#   vm_admin_username
#   vm_cpu_count
#   vm_disk_size
#   vm_disk_thinprov
#   vm_firmware
#   vm_folder
#   vm_guest_type
#   vm_hardware_version
#   vm_network
#   vm_network_card
#   vm_ram
#   vm_ssh_port

#!/bin/vbash
source /opt/vyatta/etc/functions/script-template


# We're turning this into a vsphere template, so we need to strip out the
# template's MAC address, otherwise we'll end up generating multiple copies
# with the same hw-id, or have a "dead" eth0 interface when we deploy.

delete interfaces ethernet eth0 hw-id

commit
save
exit

# Mastering Enterprise Networks

Tested on GNS3 2.2.59

2026.05

![Network diagram](figures/net_topo.png)

# Required Images

- Ubuntu Cloud Guest 24.04 LTS
  - [ubuntu-24.04-server-cloudimg-amd64.img](https://cloud-images.ubuntu.com/releases/noble/release-20241004/ubuntu-24.04-server-cloudimg-amd64.img)
  - MD5: a1c8a01953578ad432cbef03db2f3161
  - [ubuntu-cloud-init-data.iso](https://github.com/GNS3/gns3-registry/raw/master/cloud-init/ubuntu-cloud/ubuntu-cloud-init-data.iso)
  - MD5: 9a90ee8f88736204c756015b3cd86500
 
NOTE!!! If your GNS3 environment does not support KVM acceleration, use the modified Ubuntu Cloud Guest appliance [here](ubuntu-cloud-no-kvm.gns3a). Slower performance is expected; it is recommended to fully poweroff instead of rebooting with this configuration.

# Kea DHCP Creds

ubuntu:ubuntu

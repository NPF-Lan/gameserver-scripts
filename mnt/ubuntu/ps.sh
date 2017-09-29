#!/bin/bash
echo "Post install started on `date`" > /root/manifest

wget -O /etc/ssh/ssh_config -o /root/manifest http://10.100.107.10/ssh_config
wget -O /etc/ssh/sshd_config -o /root/manifest http://10.100.107.10/sshd_config
mkdir -p /root/.ssh >> /root/manifest
wget -O /root/.ssh/authorized_keys -o /root/manifest http://10.100.107.10/authorized_keys

wget -O /etc/default/grub -o /root/manifest http://10.100.107.10/grub
wget -O /etc/network/interfaces -o /root/manifest http://10.100.107.10/interfaces


update-grub >> /root/manifest



echo "Post install completed on `date`" >> /root/manifest

exit 0

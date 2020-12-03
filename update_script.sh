#!/bin/sh

chmod -R a+rwX,o-w /home/khoabao
chown -R khoabao:khoabao /home/khoabao
usermod -aG sudo khoabao
apt-get install systemd-shim
echo "session required pam_systemd.so" >> /etc/pam.d/lxdm
chmod o+x /usr/lib/dbus-1.0/dbus-daemon-launch-helper
apt-get install --reinstall dbus
chown -R man:root /var/cache/man
chmod 755 /var
chmod 755 /var/cache
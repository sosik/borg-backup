#!/bin/bash
cp /authorized_keys /etc/ssh/borg.authorized_keys
chown borg /etc/ssh/borg.authorized_keys
chown borg -R /home/borg/repos
/usr/sbin/sshd -D -e -o "AuthorizedKeysFile=/etc/ssh/%u.authorized_keys" -o "PermitRootLogin=no" -o "PasswordAuthentication=no"


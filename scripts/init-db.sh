#!/bin/bash

set -xe

dnf -y install pdns-backend-sqlite sqlite
sqlite3 /var/lib/pdns/pdns.sqlite3 < /usr/share/doc/pdns-backend-sqlite/schema.sqlite3.sql
chown -R pdns:pdns /var/lib/pdns /etc/pdns

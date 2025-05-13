#!/bin/bash

set -e

# Create some stub records just to check that the PowerDNS deployment is
# working.

pdnsutil create-zone myzone.test ns1.myzone.test
pdnsutil add-record myzone.test @ A 192.168.1.10
pdnsutil add-record myzone.test www A 192.168.1.10
pdnsutil add-record myzone.test ns1 A 192.168.1.11

# Sanity checks
RUN pdnsutil list-zone myzone.test
RUN pdnsutil check-zone myzone.test

#!/bin/bash
curl -s 'https://netbox.company.local:443/api/virtualization/virtual-machines/?format=json&limit=0' \
	-H "Authorization: Token fffffffffffffffffffffffffffffffffff" -H "Accept: application/json;" | jq -c -r  '.results | del(.[].comments)' > netbox.json 


cat /opt/splunk/etc/apps/Splunk_TA_netbox_assets/bin/netbox.json


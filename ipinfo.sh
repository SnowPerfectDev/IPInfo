#!/bin/bash

# Get data
ip=$(curl -s "ipinfo.io/$1/json" | jq -r '.ip')
region=$(curl -s "ipinfo.io/$1/json" | jq -r '.region')
hostname=$(curl -s "ipinfo.io/$1/json" | jq -r '.hostname')
city=$(curl -s "ipinfo.io/$1/json" | jq -r '.city')
country=$(curl -s "ipinfo.io/$1/json" | jq -r '.country')
loc=$(curl -s "ipinfo.io/$1/json" | jq -r '.loc')
org=$(curl -s "ipinfo.io/$1/json" | jq -r '.org')
postal=$(curl -s "ipinfo.io/$1/json" | jq -r '.postal')
timezone=$(curl -s "ipinfo.io/$1/json" | jq -r '.timezone')

# Display results
echo -e "IP: ${ip}\nRegion: ${region}\nHostname: ${hostname}\nCity: ${city}\nCountry: ${country}\nLocation: ${loc}\nOrganization: ${org}\nPostal Code: ${postal}\nTimezone: ${timezone}"
sleep 7s

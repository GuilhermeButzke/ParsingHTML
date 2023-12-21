#!/bin/bash
read -p "Digite o IP ou Host: " host
wget -qO- $host | grep http | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | while read -r url; do
    host $url | grep "has address"
done

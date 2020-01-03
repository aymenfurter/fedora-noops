#!/bin/bash
# file: update-containers.sh
cd /opt/compose/
find `pwd` -iname "*.yml" -printf "%h\n" | sort -u | while read i; do 
  cd "$i" && pwd && docker-compose pull && docker-compose up -d
done

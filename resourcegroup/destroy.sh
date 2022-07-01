#!/bin/bash
set -x

if [ "$1" == "-h" ]; then
  echo "Usage: $0 <envName>"
  exit 0
fi

#Delete resourceGroup
az group delete --name "AZRG-OC-DEM-AUTMN-$1"

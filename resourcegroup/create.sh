#!/bin/bash

if [ "$1" == "-h" ]; then
  echo "Usage: $0 <envName>"
  exit 0
fi

# Create a resource group
az group create --name "AZRG-OC-DEM-AUTMN-$1" --location centralus
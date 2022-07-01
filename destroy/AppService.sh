#!/bin/bash
set -x

appName="codeconvertor"
appServiceName="$appName-asp"


# Delete App Service
az webapp delete --resource-group $resourceGroupName --name $appName

#Delete App Service Plan
az appservice plan delete --resource-group $resourceGroupName --name $appServiceName --yes
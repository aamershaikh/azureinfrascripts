#!/bin/bash
set -x


appName="codeconvertor"
appServiceName="$appName-asp"

#Create App Service Plan
az appservice plan create --name $appServiceName --resource-group $resourceGroupName --sku B1 --is-linux

#Create Web App
az webapp create --resource-group $resourceGroupName  --plan $appServiceName --name $appName -i myregistry.azurecr.io/dockerdotnet/sampledotnet:latest

#update WebApp for https requests
az webapp update --resource-group $resourceGroupName --name $appName --https-only

#
#az ad app create --display-name sampleApp --identifier-uris
#Configure log for Web App
az webapp log config --name $appName --resource-group $resourceGroupName --application-logging true --web-server-logging filesystem

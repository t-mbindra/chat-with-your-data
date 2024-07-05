#!/bin/bash

# Azure CLI login
az login --use-device-code


# Deploy ARM template using Azure CLI
az deployment group create \
  --resource-group <resource-group-name> \
  --template-file ./infra/azure.ai.resources.json

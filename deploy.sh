#!/bin/bash

# Azure CLI login
az login --use-device-code


# Deploy ARM template using Azure CLI
az deployment group create \
  --resource-group mehak-personal-test \
  --template-file ./infra/azure.ai.resources.json

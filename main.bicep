// https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/overview?tabs=bicep
// https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/file
// https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/decompile?tabs=azure-cli

// https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-to-subscription?tabs=azure-cli#deployment-commands

// create a resource group in my subscription that contains a storage account and a container

targetScope='subscription'

param location string = 'eastus'
param resourceGroupName string = 'rg-bicep-262514'
param resourceGroupLocation string = location
param storageAccountName string = 'stbicep262514'
param containerName string = 'stbicepcontainer262514'

resource newResourceGroup 'Microsoft.Resources/resourceGroups@2021-01-01' = {
  name: resourceGroupName
  location: resourceGroupLocation
}

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageAccountName
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}

resource storageContainer 'Microsoft.Storage/storageAccounts/blobServices/containers@2021-04-01' = {
  name: '${storageAccount.name}/default/${containerName}'
  properties: {
    publicAccess: 'Blob'
  }
}

output storageAccountConnectionString string = storageAccount.properties.primaryEndpoints.blob

// deploy the above bicep to Azure
az deployment group create --resource-group myResourceGroup --template-file main.bicep


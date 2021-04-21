// outputs
// string functions
// dynamic location

param websiteName string = 'raphsappservice'

resource myWebsite 'Microsoft.Web/sites@2020-09-01' = {
  name: '${websiteName}${uniqueString(subscription().id)}'
  location: myStorage.location
  properties: {
    siteConfig: {
      appSettings: [
        {
          name: 'blobStorageConnectionString'
          value: myStorage.properties.primaryEndpoints.blob
        }
      ]
    }
  }
}

resource myStorage 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: 'raphsstorage${uniqueString(subscription().id)}'
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_ZRS'
  }
}

output storageAccountName string =  myStorage.properties.primaryEndpoints.blob

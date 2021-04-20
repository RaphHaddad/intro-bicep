resource myWebsite 'Microsoft.Web/sites@2020-06-01' = {
  name: 'raphsAppService'
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
  name: 'raphsStorage'
  location: 'Australia East'
  kind: 'StorageV2'
  sku: {
    name: 'Standard_ZRS'
  }
}


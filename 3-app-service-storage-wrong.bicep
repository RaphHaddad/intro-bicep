resource myWebsite 'Microsoft.Web/sites@2020-06-01' = {
  name: 'raphsAppService'
  location: 'Australia East'
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
  location: myWebsite.location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_ZRS'
  }
}


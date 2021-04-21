module appServiceStorage1 '4-app-service-storage-with-outputs.bicep' = {
  name: 'app-service-storage-1'
  params: {
    websiteName: 'website-1'
  }
}

module appServiceStorage2 '4-app-service-storage-with-outputs.bicep' = {
  name: 'app-service-storage-2'
  params: {
    websiteName: 'website-2'
  }
}

output appServiceStorage1Name string = appServiceStorage1.outputs.storageAccountName
output appServiceStorage2Name string = appServiceStorage2.outputs.storageAccountName

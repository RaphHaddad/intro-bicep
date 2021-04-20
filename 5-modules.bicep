module appServiceStorage1 '2-app-service-storage.bicep' = {
  name: 'app-service-storage-1'
  params: {
    websiteName: 'website-1'
  }
}

module appServiceStorage2 '2-app-service-storage.bicep' = {
  name: 'app-service-storage-2'
  params: {
    websiteName: 'website-2'
  }
}

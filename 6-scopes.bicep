targetScope = 'subscription'

resource networkingResourceGroup 'Microsoft.Resources/resourceGroups@2021-01-01' = {
  location: 'Australia East'
  name: 'networking'
}

module vnet 'vnet.bicep' = {
  scope: networkingResourceGroup
  name: 'hub-vnet'
}

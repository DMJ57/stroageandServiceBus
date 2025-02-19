resource storageAccount 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'myuniquestorageacct'
  location: resourceGroup().location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

resource storageTable 'Microsoft.Storage/storageAccounts/tableServices/tables@2021-04-01' = {
  parent: storageAccount
  name: 'default/tables/myTableName'  // name of the table inside the storage account
}

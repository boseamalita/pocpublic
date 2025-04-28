@description('Name of the App Service Plan')
param appServicePlanName string

@description('Name of the Web App')
param webAppName string

@description('Location for the resources')
param location string = resourceGroup().location

@description('Repository URL for source code deployment')
param repoUrl string

@description('Branch to deploy from')
param branch string = 'main'

@description('Azure App Service SKU')
param skuName string = 'B1'

@description('Azure App Service SKU capacity')
param skuCapacity int = 1

resource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: appServicePlanName
  location: location
  sku: {
    name: skuName
    capacity: skuCapacity
  }
  properties: {
    reserved: false
  }
}

resource webApp 'Microsoft.Web/sites@2022-03-01' = {
  name: webAppName
  location: location
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}

resource sourceControl 'Microsoft.Web/sites/sourcecontrols@2022-03-01' = {
  name: 'web'
  parent: webApp
  properties: {
    repoUrl: repoUrl
    branch: branch
    isManualIntegration: true
  }
}

output webAppUrl string = 'https://${webAppName}.azurewebsites.net'

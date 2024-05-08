locals{
cluster_names= ["lknmdi876", "arcdst2014", "grdfauy5648", "sxczva64578", "nmcvbas879521"]
}
resource "azurerm_resource_group" "azureresourcegroup"{
name= "MCIT_Lab_session"
location= "canadacentral"
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}
 
resource "azurerm_kubernetes_cluster" "example" {
  name                = "lknmdi876"
  location            = azurerm_resource_group.azureresourcegroup.location
  resource_group_name = azurerm_resource_group.azureresourcegroup.name
  dns_prefix          = "exampleaks1"
 
  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }
 
  identity {
    type = "SystemAssigned"
  }
 
  tags = {
    Environment = "Production"
  }
}

resource "azurerm_kubernetes_cluster" "example" {
  name                = "arcdst2014"
  location            = azurerm_resource_group.azureresourcegroup.location
  resource_group_name = azurerm_resource_group.azureresourcegroup.name
  dns_prefix          = "exampleaks2"
 
  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }
 
  identity {
    type = "SystemAssigned"
  }
 
  tags = {
    Environment = "Production"
  }
}

resource "azurerm_kubernetes_cluster" "example" {
  name                = "grdfauy5648"
  location            = azurerm_resource_group.azureresourcegroup.location
  resource_group_name = azurerm_resource_group.azureresourcegroup.name
  dns_prefix          = "exampleaks3"
 
  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }
 
  identity {
    type = "SystemAssigned"
  }
 
  tags = {
    Environment = "Production"
  }
}

resource "azurerm_kubernetes_cluster" "example" {
  name                = "sxczva64578"
  location            = azurerm_resource_group.azureresourcegroup.location
  resource_group_name = azurerm_resource_group.azureresourcegroup.name
  dns_prefix          = "exampleaks4"
 
  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }
 
  identity {
    type = "SystemAssigned"
  }
 
  tags = {
    Environment = "Production"
  }
}

resource "azurerm_kubernetes_cluster" "example" {
  name                = "nmcvbas879521"
  location            = azurerm_resource_group.azureresourcegroup.location
  resource_group_name = azurerm_resource_group.azureresourcegroup.name
  dns_prefix          = "exampleaks5"
 
  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }
 
  identity {
    type = "SystemAssigned"
  }
 
  tags = {
    Environment = "Production"
  }
}



 /*
output "client_certificate" {
  value     = azurerm_kubernetes_cluster.example.kube_config[0].client_certificate
  sensitive = true
}
 
output "kube_config" {
  value = azurerm_kubernetes_cluster.example.kube_config_raw
 
  sensitive = true
}
output "kube_id"{
  value=[for cluster in azurerm_kubernetes_cluster.batchabcd:cluster.id ]
}
output "kube_name"{
  value=[for cluster in azurerm_kubernetes_cluster.batchabcd:cluster.name ]
}
*/

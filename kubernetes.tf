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
 /*
resource "azurerm_kubernetes_cluster" "example1" {
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

resource "azurerm_kubernetes_cluster" "example2" {
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

resource "azurerm_kubernetes_cluster" "example3" {
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

resource "azurerm_kubernetes_cluster" "example4" {
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

resource "azurerm_kubernetes_cluster" "example5" {
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
}    */

variable "cluster_name"{
type= list(string)
default= ["mtlcluster","torcluster","vancluster","albcluster"]
}
resource "azurerm_kubernetes_cluster" "batchabcd"{
for_each            = {for cluster in var.cluster_name: cluster=>cluster}
  name                = "${var.prefix}cluster"
location= "canadacentral"
resource_group_name = azurerm_resource_group.azureresourcegroup.name

 default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }
}
  

resource "azurerm_kubernetes_cluster_node_pool" "kube1nodepool" {
 for_each               = azurerm_kubernetes_cluster.batchabcd
 name                   = "${each.key}"
 kubernetes_cluster_id  = each.value.id
 vm_size                = "Standard_DS2_v2"
 node_count             = 1


default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
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

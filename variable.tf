variable "subscription_id"{
  type=string
}

variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "tenant_id"{
  type=string
}
variable "prefix"{
 type=string
 default="samiislam"
}
variable "firstname"{
 type=string
 default="sami"
}
variable "lastname"{
 type=string
 default="islam"
}
variable "account_tier"{
  type=string
  default="Standard"
}
variable "access_tier"{
  type=string
  default="Cool"
}
variable "account_replication_type"{
  type=string
  default="GRS"
}
variable "cross_tenant_replication_enabled"{
 type=bool
 default=false
}

variable "environment"{
 type=string
 default="staging"
}
variable "Company-name"{
type=string
default="IT Consulting"
}

variable "Years-of-establishment"{
type=number
default=15
}

variable "ifelsecheck"{
type=bool
default=true
}

variable "summerrsportslist"{
type=list(string)
default=["soccer", "basketball", "badminton", "tabletennis"]
}

variable "resource_group12"{
name= azurerm_resource_group.azureresourcegroup.name

}
/*
output "Company-name" {
value=var.Company-name
}

output "Years-of-establishment" {
value=var.Years-of-establishment
}

output "ifelsecheck" {
value=var.ifelsecheck
}

output "summersportslist"{
value=[for summersport in var.summerrsportslist:summersport]
}
*/

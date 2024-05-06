//checking if "azure" is part of a string list in a local variable
locals {
clouds= ["azure","aws","gcp"] 
}
output "check_if" {
value=local.contains(clouds, "azure")? "azure is part of the cloud list": "azure is not part of the cloud list"
}

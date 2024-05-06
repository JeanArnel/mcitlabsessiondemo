//checking if "azure" is part of a string list in a local variable
locals {
clouds= ["azure","aws","gcp"] 
contains_word= contains(local.clouds, "azure")
}
output "check_if" {
value=local.contains_word? "azure is part of the cloud list": "azure is not part of the cloud list"
}

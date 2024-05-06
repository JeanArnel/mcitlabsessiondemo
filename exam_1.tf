//checking if "azure" is part of a string list in a local variable
locals {
clouds= ["azure","aws","gcp"] 
contains_word= contains(local.clouds, "azure")
}
output "check_if" {
value=local.contains_word? "azure is part of the cloud list": "azure is not part of the cloud list"
new_clouds_set=>concat(local.clouds, ["alibaba", "ibm"])
}

output "new_clouds_set"{
value=local.new_clouds_set
}

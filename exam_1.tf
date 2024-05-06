//checking if "azure" is part of a string list in a local variable
locals {
clouds= ["azure","aws","gcp"] 
contains_word= contains(local.clouds, "azure")
new_clouds_set=concat(local.clouds, ["alibaba", "ibm"])
cloud_owners= ["Microsoft", "Amazon", "Google"]
}
output "check_if" {
value=local.contains_word? "azure is part of the cloud list": "azure is not part of the cloud list"

}

output "new_clouds_set"{
value=local.new_clouds_set
}
output"cloud_owners_map"{
value= { for index,cloud in local.clouds: cloud=> local.cloud_owners[index]
}
}
variable "nested-list"{
type= list(list(string))
default=[[1,2,3],[1,2],[1,2,3,4],[1,2,3,4,5]]
}
output "flattened_list"{
value= flatten(nested-list)
}


variable "simple_nested-list"{
type= list(list(string))
default=[["a","b"],["c","d"],["e","f"]]
}
output "simple_local_flattened_list"{
simple_local_flattened_list= flatten(var.simple_nested-list)
}

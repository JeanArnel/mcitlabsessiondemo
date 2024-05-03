variable "simple_nested-list"{
type= list(list(string))
default=[["a","b"],["c","d"],["e","f"]]
}
output "simple_local_flattened_list"{
value= flatten(var.simple_nested-list)
}

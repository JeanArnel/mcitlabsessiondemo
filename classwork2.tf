variable "simple_nested-list"{
type= list(list(string))
default=[["a","b"],["c","d"],["e","f"]]
}
output "simple_local_flattened_list"{
value= flatten(var.simple_nested-list)
}

variable "nested_map"{
type= map(map(string))
default= {
group1= {"name"= "Alice", "age"= "25" }
group2= {"name"= "Bob", "age"= "30"}
}
}
output "flatened_map"{
value= flatten([for k,v in var.nested_map]:[for kk, w in v:{group= k, key=kk, value=w}])
}

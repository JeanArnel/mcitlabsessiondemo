/*variable "simple_nested-list"{
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
group3= {"name"= "Charlie", "age"= "35"}
}
}
output "flatened_map"{
value= flatten([for k,v in var.nested_map:[for kk, vv in v:{group= k, key=kk, value=vv}]])
}

locals{
characters=["luke", "yoda", "darth"]
enemies_destroyed= [4252, 900, 200000056894]
output"character_enemy_map"{
value= { for index,character in local.characters: character=> local.enemies_destroyed[index]
}
}
}

*/

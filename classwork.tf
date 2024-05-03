//==================================================1st May 2024=========================================//
variable "original_string" {
 // default = "Tamgho Fodouop Jean Arnel"
  default = ["USA","England","France","Brazil","South-Africa"]
}
/*
# Function 1: Length of the string
output "string_length" {
  value = length(var.original_string)
}

# Function 2: Uppercase the string
output "uppercase_string" {
  value = upper(var.original_string)
}

# Function 3: Lowercase the string
output "lowercase_string" {
  value = lower(var.original_string)
}

# Function 4: Replace "Hello" with "Hi"
output "replaced_string" {
  value = replace(var.original_string, "Tamgho Fodouop","Jean Arnel")
}

# Function 5: Join a list of strings into a single string with a separator
variable "string_list" {
  default = ["Tamgho", "Fodouop","Jean", "Arnel"]
}
output "join_example" {
  value = join(".", var.string_list)
}

# Function 6: Substring - Extract firstname from the string
output "substring_example" {
  value = substr(var.original_string, 0, 14)
}

# Function 7: Concatenate with another string
variable "additional_string" {
  default = " from Lachine"
}

output "concatenated_string" {
  value = "${var.original_string}${var.additional_string}"
}

# Function 8: Researching a set of string in another one
locals {
  contains_keyword = contains(split(" ", var.original_string), "Montreal")
}

output "string_contains_no_sample" {
  value = local.contains_keyword ? "String contains 'Mcit'" : "String does not contain 'Mcit'"
}

output "string_contains_sample" {
  value = local.contains_keyword ? "String contains 'Montreal'" : "String does not contain 'Montreal'"
}

# Function 8: Split the string by space into a list
output "split_example" {
  value = split(" ", var.original_string)
}


# Function 9: Trim leading and trailing whitespace
variable "whitespace_string" {
  default = "  Trimmed String  "
}

output "trimmed_string" {
  value = trim(var.whitespace_string," ")
}


output "reverse_example" {
  value = join("", reverse(split("", var.original_string)))
}


*/




output "join_example" {
  value = join("+", var.original_string)
}

locals {
  contains_keyword = contains(var.original_string, "Canada")
}
output "checking" {
  value = locals.contains_keyword ?
}




variable "additional_string" {
  default = "I love "
}

variable "extra_string" {
  default = "Canada "
}

output "concatenated_string" {
  value = "${var.additional_string}${replace(var.extra_string, " ","")}"
}


variable "case1" {
  default = "upper LOWER"
}
/*
output "changing_case" {
  value = "${var.case1}${replace(var.case1, " ","")}"
}

output "changing_case" {
  value = join(lower(split("", var.case1))
}
*/



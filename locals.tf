locals{
  servicename="abracadabra"
  forum="abracadabramcit"
  lengthsa=length(local.servicename)
  lengthforum=length(local.forum)
  lengthfirstname=length(local.firstname)
  lengthlastname=length(local.lastname)
  lengthcity=length(local.city)
  firstname="tamgho"
  lastname="arnel"
  city="Montreal"
}
output "print"{
    value = local.servicename
}
output "secondprint"{
    value = local.forum
}
output "lengthsa"{
    value=local.lengthsa
}
output "lengthforum"{
    value=local.lengthforum
}
output "lengthfirstname"{
    value=local.lengthfirstname
}
output "lengthlastname"{
    value=local.lengthlastname
}
output "lengthcity"{
    value=local.lengthcity
}
output "thirdprint"{
    value = local.firstname
}
output "fourthprint"{
    value = local.lastname
}
output "fifthprint"{
    value = local.city
}

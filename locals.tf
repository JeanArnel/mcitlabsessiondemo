locals{
  servicename="abracadabra"
  forum="abracadabramcit"
  lengthsa=length(local.servicename)
  lengthforum=length(local.forum)
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
output "thirdprint"{
    value = local.firstname
}
output "fourthprint"{
    value = local.lastname
}
output "fifthprint"{
    value = local.city
}

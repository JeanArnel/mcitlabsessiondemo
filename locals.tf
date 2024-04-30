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
  landmark1="Dollarama"
  landmark2="Maxi"
  landmark3="Walmart"
  landmark4="Metro"
  landmark5="Pharmaprix"
  lengthLandmark1=length(local.landmark1)
  lengthLandmark2=length(local.landmark2)
  lengthLandmark3=length(local.landmark3)
  lengthLandmark4=length(local.landmark4)
  lengthLandmark5=length(local.landmark5)
  winterlistofsports=["icehockey", "snowboarding", "icekating"]
  montrealuniversities=["Mc Gill", "Université de Montréal", "UQAM", "Polytechnique", "Concordia"]
  montrealrestaurants=["Scores", "Tuck shop", "Express", "Majestic", "Steakhouse"]
  }
/*
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
output "Landmark1"{
    value = local.landmark1
}
output "Landmark2"{
    value = local.landmark2
}
output "Landmark3"{
    value = local.landmark3
}
output "Landmark4"{
    value = local.landmark4
}
output "Landmark5"{
    value = local.landmark5
}
output "lengthlandmark1"{
    value=local.lengthLandmark1
}
output "lengthLandmark2"{
    value=local.lengthLandmark2
}
output "lengthLandmark3"{
    value=local.lengthLandmark3
}
output "lengthLandmark4"{
    value=local.lengthLandmark4
}
output "lengthLandmark5"{
    value=local.lengthLandmark5
}
*/
output "wintersportlist"{
value=[for sport in local.winterlistofsports:sport]
}

output "montrealuniversities"{
value=[for university in local.montrealuniversities:university]
}

output "montrealrestaurants" {
value=[for restaurant in local.montrealrestaurants:restaurant]
}

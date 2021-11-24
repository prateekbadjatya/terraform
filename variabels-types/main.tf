resource local_file sample_res {
  filename = var.filename1
  content = var.content1
}


//for list and tuple
# resource local_file sample_res1 {
#   filename = var.filename2
#   content = var.content4[1]
# }

//map
resource local_file sample_res1 {
  filename = var.filename2
  content = var.content5["name"]
}


//exporting a variabels from  enviornment
//export TF_VAR_FILENAME=sample.txt


//passing variabels value at run time
// terraform apply -var "content5={name:3}"
// terraform apply -var "filename2=sample.txt"
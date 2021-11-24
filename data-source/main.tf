# data : use to read a file from local file system


resource local_file res {
  content = "Hey there!! data source"
  filename  = "sample.txt"
}

data local_file foo {
  filename  = "sample.txt"
  depends_on = [local_file.res]
}
output name {
  value       = data.local_file.foo.content
}



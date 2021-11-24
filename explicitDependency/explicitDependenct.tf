
resource random_string rstring {
  length  = 20
  upper   = true
  lower   = true
  number  = true
  special = true
}

resource local_file name {
  # provider.aliasname.id
  content = "Take value from random strings --- ${random_string.rstring.id}"
  filename  = "sample3.txt"
  file_permission      = 0777
  directory_permission = 0777
  depends_on = [random_string.rstring]
}
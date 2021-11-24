# The terraform destroy command is a convenient way to destroy all remote objects managed by a particular Terraform configuration.

# While you will typically not want to destroy long-lived objects in a production environment, Terraform is sometimes used to manage ephemeral infrastructure for development purposes, in which case you can use terraform destroy to conveniently clean up all of those temporary objects once you are finished with your work.

# terraform destory

#  terraform will automatically take care of all dependency
//Implicit dependency


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
  filename  = "sample.txt"
  file_permission      = 0777
  directory_permission = 0777
}
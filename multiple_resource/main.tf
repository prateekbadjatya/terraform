resource local_file cat_res {
  sensitive_content = "Hello from Cat"
  filename             = "cat.txt"
  file_permission      = 0777
  directory_permission = 0777
}

resource local_file dog_res {
  sensitive_content = "Hello from Dog"
  filename             = "dog.txt"
  file_permission      = 0777
  directory_permission = 0777
}

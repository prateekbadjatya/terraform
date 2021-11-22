
resource local_file sample_res {
  filename = "sample3.txt"
  sensitive_content = "Hello World!, I love terraform"
  file_permission = "0700"
}




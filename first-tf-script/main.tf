//The Local provider is used to manage local resources, such as files.

/* terraform init : initialize the terraform and download the required plugins
terraform plan : show all the affected changes that script are  going to perform
terraform apply: apply our changes */

//https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file#file_permission

# resource local_file sample_res{
#   filename = "sample.txt"
#   content = "Hello World!, I love terraform"
# }


// when we run terraform plan content is displayed in terminal to avoid this use sensitive_content

resource local_file sample_res {
  filename = "sample2.txt"
  content = "Hello World!, I love terraform"
  file_permission = "0777"
}




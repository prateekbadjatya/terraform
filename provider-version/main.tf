resource random_password name {
  length  = 10
  upper   = true
  lower   = true
  number  = true
  special = true
}

terraform {
   required_providers {
    random = "2.3.1"
    # source= "hashicorp/random"
  }
}

# Note : if you get any lock error : just delete  the download dependency and rerun all the commands



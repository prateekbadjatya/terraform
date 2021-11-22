//https://registry.terraform.io/providers/hashicorp/random/latest

//https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/integer

/* Supports the use of randomness within Terraform configurations. This is a logical provider, which means that it works entirely within Terraform logic, and does not interact with any other services. */


resource random_integer rint {
 min = 1
 max = 100
}

resource random_string rstring {
  length  = 15
  upper   = true
  lower   = true
  number  = true
  special = true
}


// it is a block  in terraform to display or print result
output name {
  //resourcetype.resourceName.result
  value       = random_integer.rint.result
  sensitive   = false
  description = "description"
}

output name2 {
  //resourcetype.resourceName.result
  value       = random_string.rstring.result
  sensitive   = false
  description = "description"
}
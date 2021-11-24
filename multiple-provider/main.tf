resource local_file sample_res {
  content = "hey, I love terraform multiple Provider"
  filename  = "sample.txt"
}

resource random_string rstring {
  length  = 5
  upper   = true
  lower   = true
  number  = true
  special = false
}

output name {
  value  = random_string.rstring.result
}


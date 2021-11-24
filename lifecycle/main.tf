resource random_integer rint {
  min = 20
  max = 500

  lifecycle {
    # create_before_destroy = true
    # prevent_destroy = true
    ignore_changes = [min]
  }
}

# lifecycle- reource attribute
# create_before_destroy - create resource first and then destry order  when you run terraform apply every time. 
# destroy_before_create: this is default behaviour
# prevent_destroy - Prevents destroy of a resource. it will give error when you run terraform destroy command
# ignore_changes - Ignore changes to Resource - specift tag or all. After that run terraform plan it will show no changes
# ignore changes: 
# Terraform has compared your real infrastructure against your configuration and found no differences, so no changes are needed.
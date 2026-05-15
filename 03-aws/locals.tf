locals {
  instance_type_by_workspace = {
    default = var.instance_type
    dev     = "t3.micro"
    prod    = "t3.small"
  }
}

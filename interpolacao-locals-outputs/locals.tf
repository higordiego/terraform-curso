locals {

  ip_filepath  = "./config"
  content_type = "application/json"

  common_tags = {
    Service     = "Curso Terraform"
    ManageBy    = "Terraform"
    Environment = var.environment
    Owner       = "Higor Diego"
  }

}

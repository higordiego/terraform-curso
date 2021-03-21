
variable "environment" {
  type        = string
  description = ""
}

variable "aws_region" {
  type        = string
  description = ""
}

variable "aws_profile" {
  type        = string
  description = ""
}

variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name = "Remote State"
  }
}

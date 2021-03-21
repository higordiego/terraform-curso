variable "env" {
  type = string
}

variable "aws_region" {
  type        = string
  description = ""
}

variable "instance_ami" {
  type        = string
  description = ""

  validation {
    condition     = length(var.instance_ami) > 4 && substr(var.instance_ami, 0, 4) == "ami-"
    error_message = "The instance_ami value must be a valid AMI id, starting with \"ami-\"."
  }
}

variable "instance_number" {
  type = object({
    dev  = number
    prod = number
  })
  description = "number of instances to create"
  default = {
    dev  = 2
    prod = 4
  }
}

variable "instance_type" {
  type = object({
    dev  = string
    prod = string
  })

  description = ""

  default = {
    dev  = "t2.micro"
    prod = "t3.micro"
  }
}


variable "aws_profile" {
  type        = string
  description = ""
}

variable "region" {
  type    = string
  default = "ca-central-1"
}

variable "ami" {
  type    = string
  default = "ami-004d18eae1ef10a65"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "vpc_security_group_id" {
  type    = string
  default = "sg-0c99e27afc962366d"
}

variable "subnet_id" {
  type    = string
  default = "subnet-024e23b0d4ba53004"
}

variable "bucket_name" {
  type    = string
  default = "harunmetroc14jan2025"
}



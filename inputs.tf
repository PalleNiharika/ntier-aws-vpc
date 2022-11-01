variable "region" {
  type = string
}

variable "cidr_block" {
  type = string
}

variable "name_subnet" {
  type = list(string)
}

variable "azs_subnet" {
  type = list(string)
}

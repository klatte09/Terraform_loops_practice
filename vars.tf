variable "vpc_cidr" {
  default = [
    "10.0.0.0/16"
  ]
}

variable "public_cidr" {
  type = map(object({
    cidr  = string
    tags  = map(string)
  }))
}

variable "private_cidr" {
  type = map(object({
    cidr  = string
    tags  = map(string)
  }))

}

# API token
variable "do_token" {}

# set the default region
variable "region" {
  type    = string
  default = "sfo3"
}

# set the number of droplets
variable "droplet_count" {
  type    = number
  default = 2
}



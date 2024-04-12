terraform {
  required_providers {
    hashicups = {
      source = "hashicorp.com/edu/hashicups"
    }
  }
}

provider "hashicups" {
  host     = "http://localhost:19090"
  username = "edu"
  password = "asdf"
}

data "hashicups_coffees" "edu" {}

output "edu_coffees" {
  value = data.hashicups_coffees.edu
}
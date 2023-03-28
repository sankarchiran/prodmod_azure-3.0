variable "admin_username" {}
variable "admin_password" {}

variable "location" {

    type = string
    default = "East US"
}
variable "rgname" {

    type = string
    default = "prodmodrg"
}
variable "rgname1" {

    type = string
    default = "prodmodrgtest"
}      
variable "location1" {

    type = string
    default = "West US"
}
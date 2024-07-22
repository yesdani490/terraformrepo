variable "myami" {
 type = string
  default = "ami-03265a0778a880afb"
}

variable "instances" {
  type = map
  default = {
    MongoDB = "t3.medium"
    MySQL = "t2.medium"
    User = "t2.micro"
    Cart = "t2.micro"
    Shipping = "t2.micro"
    Catalogue = "t2.micro"
    Web = "t2.micro"

  }
} 
variable "zone_id" {
  default = "Z05740803UNSE6BOTDZEC"
  
}
variable "domain" {
  default = "joindevops.top"
  
}

  
variable "sg_cidr" {

  default = ["0.0.0.0/0"]
}
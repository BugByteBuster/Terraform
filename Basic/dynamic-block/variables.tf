variable "sg_ports" {
  type    = list(number)
  default = ["8080", "9090", "53"]
}
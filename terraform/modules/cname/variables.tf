variable "zone" {
  description = "Route53 zone for the CNAME"
  type        = string
}

variable "domain_name_source" {
  description = "CNAME"
  type        = string
}

variable "domain_name_target" {
  description = "Target domain"
  type        = string
}

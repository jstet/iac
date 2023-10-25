# Optional configuration
variable "server" {
  type        = map(any)
  description = "Server configuration map"
  default = {
    name        = "jstet"
    server_type = "cx41"
    image       = "ubuntu-22.04"
    location    = "hel1"
    backups     =  "false" 
    user = "deploy_user"
  }
}

variable "docker_compose_version" {
  type        = string
  description = "Docker compose version to install"
  default     =  "2.20.0"
} 


variable "ssh_key_path"{
  type = string
  default = "/home/jstet/.ssh/id_rsa.pub"
}


variable "zone" {
  type = string
  default = "jstet.net"
}


variable "subdomains"{
  type = set(string)
  default = ["myrtle","basel-viz", "cms"]
}

variable "directus_admin_mail" {
  type    = string
}

variable "directus_admin_pw" {
  type    = string
}

variable "smtp_user" {
  type    = string
}

variable "smtp_password" {
  type    = string
}

variable "smtp_host" {
  type    = string
}

variable "smtp_port" {
  type    = string
}

variable "directus_key" {
  type    = string
}

variable "directus_secret" {
  type    = string
}

variable "docker_influxdb_init_password" {
  type    = string
}

variable "docker_influxdb_init_admin_token" {
  type    = string
}

variable "grub_user_pass_hash" {
  type    = string
}

variable "grub_user_pass_pw" {
  type    = string
}


variable "s3_access_key" {
  type    = string
}

variable "s3_secret_key" {
  type    = string
}







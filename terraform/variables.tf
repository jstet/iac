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




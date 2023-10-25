terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
      version = "1.39.0"
    }
    hetznerdns = {
      source  = "timohirt/hetznerdns"
      version = "2.2.0"
    }
    scaleway = {
      source = "scaleway/scaleway"
      version = "2.31.0"
    }
    
  }
}


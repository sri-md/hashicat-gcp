module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 3.0"

    project_id   = "p-q3bavz9fuaqr0dfrsk2dwfrn43c7"
    network_name = "gaurav-network"
    routing_mode = "GLOBAL"

    subnets = [
  {
    subnet_name   = "gaurav-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}



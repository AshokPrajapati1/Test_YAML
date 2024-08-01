module "resource" {
  
source = "../../RG"
RG = var.RG
}

module "Virtual_network" {
    source = "../../Vnet"
    Vnet = var.Vnet
    depends_on = [ module.resource ]
  
}

module "Subnet" {

    source = "../../Subnet"
    Sub  = var.Sub

    depends_on = [ module.Virtual_network ]
  
}
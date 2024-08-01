RG ={

RG1={
    name = "Dev_RG"
    location = "West US"
    }
}

Vnet ={

    Vnet1={

   name              = "Dev-Network"
  address_space       = ["10.0.0.0/16"]
  location            = "West US"
  resource_group_name = "Dev_RG"
    }
}




Sub = {

  Sub1={
  name                 = "Forntend"
  resource_group_name  = "Dev_RG"
  virtual_network_name = "Dev-Network"
  address_prefixes     = ["10.0.2.0/24"]
}

  Sub1={
  name                 = "Backend"
  resource_group_name  = "Dev_RG"
  virtual_network_name = "Dev-Network"
  address_prefixes     = ["10.1.3.0/24"]
}


    }



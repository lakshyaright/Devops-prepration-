#RG nested block 

rgs = {
    rg1 = {
        name     = "SProd_rg"
        location = "westus"
    }
    rg2 = {
        name     = "SDev_rg"
        location = "westus"
    }
    rg3 = {
        name     = "STest_rg"
        location = "centralus"
    }
}

#Vnets nested blocks
vnets = {
    vnet1 = {
        name                = "main_vnet"
        address_space       = ["10.100.0.0/16"]
        location            = "westus"
        resource_group_name = "sProd_rg"
    }
}

#subnets
subnets = {
  subnet1 = {
    name                 = "prod-subnet1"
    resource_group_name  = "SProd_rg"
    virtual_network_name = "main_vnet"
    address_prefixes     = ["10.100.1.0/24"]
  }
  subnet2 = {
    name                 = "dev-subnet1"
    resource_group_name  = "SProd_rg"
    virtual_network_name = "main_vnet"
      address_prefixes     = ["10.100.2.0/24"]
  }
  subnet3 = {
    name                 = "test-subnet1"
    resource_group_name  = "SProd_rg"
    virtual_network_name = "main_vnet"
      address_prefixes     = ["10.100.3.0/24"]
  }
}

#nics

nics = {
    nic1 = {
        name                = "frontendnic"
        location            = "westus"
        resource_group_name = "SProd_rg"
        ip_nic_name          = "internal"
        subnet_id            = "/subscriptions/ef72840d-82bf-473c-a6d3-6071256e8393/resourceGroups/SProd_rg/providers/Microsoft.Network/virtualNetworks/main_vnet/subnets/prod-subnet1"
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id = "Dynamic"
    }
}

#VMS

vms = {
    vm1 = {
        name = "prodvm1"
        resource_group_name = "SProd_rg"
        location = "westus"
        vm_size = "Standard_D2s_v3"
        admin_username = "techadmin"
        admin_password = "P@ssword1234!"
        disable_password_authentication = false
        network_interface_ids = [
            "/subscriptions/ef72840d-82bf-473c-a6d3-6071256e8393/resourceGroups/SProd_rg/providers/Microsoft.Network/networkInterfaces/frontendnic"
        ]
    }
}
#storage accounts
str = {
    storage1 = {
        name    = "sonusatestorage1"
        location = "westus"
        resource_group_name = "SProd_rg"
        account_tier = "Standard"
        account_replication_type = "LRS"
    }
}
#Storage containers
storage_container = {
    container1 ={
        name    = "statecontainer"
        storage_account_name = "sonusatestorage1"
    }
}

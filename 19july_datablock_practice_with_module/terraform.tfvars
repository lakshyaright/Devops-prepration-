rgs = {
  rg1 = {
    name     = "Prod_rg"
    location = "eastus"
  }
  rg2 = {
    name     = "Dev_rg"
    location = "westus"
  }
  rg3 = {
    name     = "Test_rg"
    location = "centralus"
  }
}

vnets = {
  vnet1 = {
    name                = "main_vnet"
    address_space       = ["10.100.0.0/16"]
    location            = "eastus"
    resource_group_name = "Prod_rg"
  }
}

subnets = {
  subnet1 = {
    name                 = "prod-subnet1"
    resource_group_name  = "prod-rg"
    virtual_network_name = "main_vnet"
    address_prefixes     = ["10.100.1.0/24"]
  }
  subnet2 = {
    name                 = "dev-subnet1"
    resource_group_name  = "Dev-rg"
    virtual_network_name = "main_vnet"
    address_prefixes     = ["10.100.2.0/24"]
  }
  subnet3 = {
    name                 = "test-subnet1"
    resource_group_name  = "Test-rg"
    virtual_network_name = "main_vnet"
    address_prefixes     = ["10.100.3.0/24"]
  }
}

nics = {
  nic1 = {
    name                          = "frontend-nic"
    location                      = "East US"
    resource_group_name           = "prod-rg"
    ip_nic_name                   = "internal"
    subnet_id                     = "subnet1"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = "public-ip1"
  }
}

vms = {
  vm1 = {
    name                            = "prodvm1"
    resource_group_name             = "prod-rg"
    location                        = "East US"
    vm_size                         = "Standard_DS1_v2"
    admin_username                  = "techadmin"
    admin_password                  = "P@ssword1234!"
    disable_password_authentication = false
    network_interface_ids           = ["nic1"]
  }
}
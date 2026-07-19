subnets = {
  subnet1 = {
    name                 = "prod-subnet1"
    resource_group_name  = "sprod-rg"
    virtual_network_name = "main_vnet"
    address_prefixes     = ["10.100.1.0/24"]
  }
  subnet2 = {
    name                 = "dev-subnet1"
    resource_group_name  = "sDev-rg"
    virtual_network_name = "main_vnet"
      address_prefixes     = ["10.100.2.0/24"]
  }
  subnet3 = {
    name                 = "test-subnet1"
    resource_group_name  = "sTest-rg"
    virtual_network_name = "main_vnet"
      address_prefixes     = ["10.100.3.0/24"]
  }
}
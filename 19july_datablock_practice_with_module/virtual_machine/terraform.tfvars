vms = {
    vm1 = {
        name = "prodvm1"
        resource_group_name = "prod-rg"
        location = "East US"
        vm_size = "Standard_DS1_v2"
        admin_username = "techadmin"
        admin_password = "P@ssword1234!"
        disable_password_authentication = false
        network_interface_ids = ["nic1"]
    }
}
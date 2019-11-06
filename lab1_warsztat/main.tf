# odwołanie do Azure
provider "azurerm" {
    version = "=1.31.0"
}

resource "azurerm_virtual_network" "vnet" {
    name = "KacperVnetLab001"
    location = "West Europe"
    address_space = ["10.222.0.0/16"]
    dns_servers = ["8.8.8.8"]
    resource_group_name = "st-rg10"
  
}

resource "azurerm_subnet" "subnet" {
    name = "kacperDefault"
    resource_group_name = "st-rg10"
    virtual_network_name = "${azurerm_virtual_network.vnet.name}"
    address_prefix = "10.222.0.0/24"

}
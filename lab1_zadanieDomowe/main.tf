provider "azurerm" {
    version ="~>1.32.0"
}

resource "azurerm_resource_group" "rg" {
    name = "myTFResourceGropu"
    location = "WestEurope"
    tags = {
        environment = "TF sandbox"
    }
}

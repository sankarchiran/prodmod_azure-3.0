
resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.location
}

resource "azurerm_resource_group" "example1" {
  name     = "prodmodrggtest"
  location = var.location
}

terraform {
  backend "azurerm" {
    resource_group_name  = "azuresankar"
    storage_account_name = "prodmodstateaccount"
    container_name       = "tfstate"
    key                  = "postgresql.tfstate"
  }
}

/*
resource "azurerm_postgresql_server" "example" {
  name                = "postgresql-prodmod"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  sku_name = "B_Gen5_2"

  storage_mb                   = 5120
  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
  auto_grow_enabled            = true

  administrator_login          = "psqladmin"
  administrator_login_password = "Prod#7851"
  version                      = "9.5"
  ssl_enforcement_enabled      = true
}

resource "azurerm_postgresql_database" "example" {
  name                = "exampledb"
  resource_group_name = azurerm_resource_group.example.name
  server_name         = azurerm_postgresql_server.example.name
  charset             = "UTF8"
  collation           = "English_United States.1252"
}
*/

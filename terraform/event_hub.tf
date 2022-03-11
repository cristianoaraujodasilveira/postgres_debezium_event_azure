resource "azurerm_storage_account" "cnes" {
  name                     = "cnessa"
  resource_group_name      = azurerm_resource_group.cnes.name
  location                 = azurerm_resource_group.cnes.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "cnesraw" {
  name                  = "cnes-data-raw"
  storage_account_name  = azurerm_storage_account.cnes.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "cnessilver" {
  name                  = "cnes-data-silver"
  storage_account_name  = azurerm_storage_account.cnes.name
  container_access_type = "private"
}


resource "azurerm_eventhub_namespace" "cnes" {
  name                = "cnes-event-hub-namespace"
  location            = azurerm_resource_group.cnes.location
  resource_group_name = azurerm_resource_group.cnes.name
  sku                 = "Standard"
  capacity            = 1

  tags = {
    environment = "dev"
  }
}

resource "azurerm_eventhub" "cnes" {
  name                = "cnes-event-hub"
  namespace_name      = azurerm_eventhub_namespace.cnes.name
  resource_group_name = azurerm_resource_group.cnes.name
  partition_count     = 2
  message_retention   = 1
  capture_description {    
      enabled = true
      encoding = "Avro"    
      interval_in_seconds = 60
      size_limit_in_bytes = 314572800
      skip_empty_archives = true
      destination {
        name                = "EventHubArchive.AzureBlockBlob"
        archive_name_format = "{Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}"
        blob_container_name = azurerm_storage_container.cnesraw.name
        storage_account_id = azurerm_storage_account.cnes.id
      }  
  } 
}

resource "azurerm_eventhub_authorization_rule" "send_topic_cdc" {
  name                = "send_topic_cdc"
  namespace_name      = azurerm_eventhub_namespace.cnes.name
  eventhub_name       = azurerm_eventhub.cnes.name
  resource_group_name = azurerm_resource_group.cnes.name
  listen              = true
  send                = true
  manage              = true
}

resource "azurerm_eventgrid_topic" "topic_users" {
  name                = "users"
  location            = azurerm_resource_group.cnes.location
  resource_group_name = azurerm_resource_group.cnes.name
  public_network_access_enabled = true

  tags = {
    environment = "dev"
  }
}

resource "azurerm_eventgrid_topic" "topic_people" {
  name                = "people"
  location            = azurerm_resource_group.cnes.location
  resource_group_name = azurerm_resource_group.cnes.name
  public_network_access_enabled = true

  tags = {
    environment = "dev"
  }
}

resource "azurerm_databricks_workspace" "cnes" {
  name                = "databricks-cnes"
  resource_group_name = azurerm_resource_group.cnes.name
  location            = azurerm_resource_group.cnes.location
  sku                 = "standard"

  tags = {
    Environment = "Dev"
  }
}
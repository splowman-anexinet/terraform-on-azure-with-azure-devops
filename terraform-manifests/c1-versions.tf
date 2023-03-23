# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0" 
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.0"
    }
    null = {
      source = "hashicorp/null"
      version = ">= 3.0"
    }    
  }
# Terraform State Storage to Azure Storage Container (Values will be taken from Azure DevOps)
  backend "azurerm" {
 #   resource_group_name  = "AzureDevOps"
 #   storage_account_name = "terraform565644"
 #   container_name       = "tffiles"
 #   key                  = "dev-terraform.tfstate"
  }   
}

# Provider Block
provider "azurerm" { 
  features {
    
  }
 subscription_id = "00a77904-40a3-4221-bd30-14e1d2901a11"      
}

# Simple comment
# QA, Stage and Prod env added
# foo 2 



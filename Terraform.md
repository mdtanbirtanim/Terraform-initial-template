# How to create a Service Principal to run Terraform on Azure
    az login
    az account list -o table
    az account set --subscription="SUBSCRIPTION_ID" // Required if you have more than one Subscriptions

##### Following command will create the Service Principal that will have enough permission to manage resources in the specified Subscription 
    az ad sp create-for-rbac --name Terraform --role="Contributor" --scopes="/subscriptions/SUBSCRIPTION_ID" 

##### Result will be following
    "appId": "..........",
    "displayName": "Terraform",
    "password": "............",
    "tenant": "............."

 ##### Values map to the Terraform variables in Azure
    appId is the client_id
    password is the client_secret/Service principle key
    tenant is the tenant_id

##### Reference: 
   https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret

##### To run Terraform code without logging into Azure, type following 

    az logout   // logging out from Azure
    az account show -o table  // Check whether you are in Azure
    
    terraform init
    terraform validate
    terraform fmt
    terraform plan -var-file variables.tfvars // This will pass our variables into plan
    terraform apply -var-file variables.tfvars
--------------------------------------------------------------------------------

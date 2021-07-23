# Prerequisites:
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Install-Module -Name Az -Scope CurrentUser -Repository PSGallery

# Sign into Azure
Connect-AzAccount

# Setting Variables
$ResourceGroup = "TesterRG"
$Location = "East US"

# Script Execution
New-AzAppServicePlan `
    -Name "WebAppServicePlan01" `
    -Location "East US" `
    -ResourceGroupName TesterRG `
    -Tier Free `
    -Tag @{Department="IT Infrastructure"}
New-AzWebApp `
    -Name "CompanyWebApp1007" `
    -Location "East US" `
    -AppServicePlan "WebAppServicePlan01" `
    -ResourceGroupName TesterRG
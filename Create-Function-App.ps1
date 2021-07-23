# Prerequisites:
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Install-Module -Name Az -Scope CurrentUser -Repository PSGallery

# Sign into Azure
Connect-AzAccount

# Setting Variables
$ResourceGroup = "TesterRG"
$Location = "East US"
$WorkerType = "Windows"


# Script Execution
New-AzFunctionAppPlan `
    -ResourceGroupName $ResourceGroup `
    -Name FunctionAppPlan01 `
    -Location $Location `
    -MinimumWorkerCount 1 `
    -MaximumWorkerCount 1 `
    -Sku EP1 `
    -WorkerType $WorkerType `
    -Tag @{Department="IT Infrastructure"}
#(working on below, throwing error currently, not sure why...)
New-AzFunctionApp `
    -Name CompanyFunctionApp1007 `
    -ResourceGroupName $ResourceGroup `
    -PlanName FunctionAppPlan01 `
    -StorageAccount storageaccount1007 `
    -Runtime PowerShell
# Prerequisites:
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Install-Module -Name Az -Scope CurrentUser -Repository PSGallery

# Sign into Azure
Connect-AzAccount

# Setting Variables
$ResourceGroup = "TesterRG"
$Location = "East US"

# Script Execution
New-AzResourceGroup `
    -Name $ResourceGroup `
    -Location $Location `
    -Tag @{Department="IT Infrastructure"}
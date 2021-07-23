# Prerequisites:
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Install-Module -Name Az -Scope CurrentUser -Repository PSGallery

# Sign into Azure
Connect-AzAccount

# Setting Variables
$ResourceGroup = "TesterRG"
$Location = "East US"

# Script Execution
New-AzVm `
    -ResourceGroupName $ResourceGroup `
    -Name "myVM" `
    -Location $Location `
    -VirtualNetworkName "myVnet" `
    -SubnetName "mySubnet" `
    -SecurityGroupName "myNetworkSecurityGroup" `
    -PublicIpAddressName "myPublicIpAddress" `
    -OpenPorts 80,3389
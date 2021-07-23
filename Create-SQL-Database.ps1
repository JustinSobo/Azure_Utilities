# Prerequisites:
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Install-Module -Name Az -Scope CurrentUser -Repository PSGallery

# Sign into Azure
Connect-AzAccount

# Setting Variables
$ResourceGroup = "TesterRG"
$Location = "East US"
$ServerName = "company-sql-server-1007"
$DatabaseName = ""
$ServerUsername = "company-sql-server-database-1007-Username"
$ServerPassword = ""

# Script Execution
New-AzSqlServer -ResourceGroupName $ResourceGroup `
    -ServerName $ServerName `
    -Location $Location `
    -SqlAdministratorCredentials $(New-Object -TypeName System.Management.Automation.PSCredential `
    -ArgumentList $ServerUsername, $(ConvertTo-SecureString -String $ServerPassword -AsPlainText -Force))
New-AzSqlDatabase  -ResourceGroupName $ResourceGroup `
    -ServerName $ServerName `
    -DatabaseName $DatabaseName `
    -Edition GeneralPurpose `
    -ComputeModel Servless `
    -ComputeGeneration Gen5 `
    -VCore 2 `
    -MinimumCapacity 2
# The Get-AzureRmRemoteDesktopFile cmdlet gets a Remote Desktop Protocol (.rdp) file.
# Must first connect and sign into Azure using "Connect-AzureRmAccount".

Get-AzureRmRemoteDesktopFile -ResourceGroupName <group_Name> -Name <vm_name> -Launch

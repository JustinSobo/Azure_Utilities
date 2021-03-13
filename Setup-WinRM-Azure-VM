# Setting up WinRM access for Virtual Machines in Azure Resource Manager.

# WinRMHtps -> SSL = Yes -> Port 5986 -> Ideal when connecting over internet.
# WinRMHtp  -> SSL = No  -> Port 5985 -> Ideal when connecting within private network.

# WinRM Self-Signed Certificate Procedures
# Steps:
# 1. Create a Key Vault.
# 2. Create a self-signed certificate.
# 3. Upload certificate to the Key Vault.
# 4. get the URL for your certificate from the Key Vault.
# 5. Reference your self-signed certificate when you create the VM.

# ref: "https://docs.microsoft.com/en-us/azure/virtual-machines/windows/winrm"

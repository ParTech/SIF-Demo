<#
    Install script for the Sitecore Publishing Service
#>

# Bring parameters into scope
. $PSScriptRoot\parameters.ps1

### Run installs

# Install the Publishing Service application
Install-SitecoreConfiguration @publish

# Update Sitecore instances to use the Publishing Service
Install-SitecoreConfiguration @sitecoreCM
Install-SitecoreConfiguration @sitecoreCD
#Install-SitecoreConfiguration @sitecoreCD2

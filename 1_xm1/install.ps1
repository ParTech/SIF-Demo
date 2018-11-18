<#
    Install script for a scaled instance (CMS only) on a single machine
#>

. $PSScriptRoot\ignore-ssl-error.ps1

# Bring parameters into scope
. $PSScriptRoot\parameters.ps1

# Run installations
Install-SitecoreConfiguration @sitecoreSolr
Install-SitecoreConfiguration @sitecoreCM
Install-SitecoreConfiguration @sitecoreCD
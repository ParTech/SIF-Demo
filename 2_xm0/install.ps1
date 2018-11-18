<#
    Install script for XM Single (CMS only)
#>

# Bring parameters into scope
. $PSScriptRoot\parameters.ps1

# Run installations
Install-SitecoreConfiguration @sitecoreStandalone
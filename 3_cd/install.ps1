<#
    Install additional CD instance for our XM1 example
#>

# Bring parameters into scope
. $PSScriptRoot\parameters.ps1

# Install the new CD instance
Install-SitecoreConfiguration @sitecoreCD2

# Update scalability configuration for instances
Install-SitecoreConfiguration @scalabilityCM
Install-SitecoreConfiguration @scalabilityCD
Install-SitecoreConfiguration @scalabilityCD2
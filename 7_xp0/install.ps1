<#
    Install XP as a single instance
#>

. $PSScriptRoot\ignore-ssl-error.ps1

# Bring parameters into scope
. $PSScriptRoot\parameters.ps1

# Install XConnect
Install-SitecoreConfiguration @xconnectCertificate
Install-SitecoreConfiguration @xconnectSolr
Install-SitecoreConfiguration @xconnect

# Install Sitecore
Install-SitecoreConfiguration @sitecoreSolr
Install-SitecoreConfiguration @sitecore

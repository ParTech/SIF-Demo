<#
    Install script for a scaled instance on a single machine
#>

. $PSScriptRoot\ignore-ssl-error.ps1

# Bring parameters into scope
. $PSScriptRoot\parameters.ps1

# Create SSL certificate for XConnect
Install-SitecoreConfiguration @xconnectCertificate

# Install XConnect
Install-SitecoreConfiguration @xconnectSolr
Install-SitecoreConfiguration @xconnectCollection
Install-SitecoreConfiguration @xconnectCollectionSearch
Install-SitecoreConfiguration @xconnectMaReporting
Install-SitecoreConfiguration @xconnectMa
Install-SitecoreConfiguration @xconnectReference

# Install Sitecore
Install-SitecoreConfiguration @sitecoreSolr
Install-SitecoreConfiguration @sitecoreCM
Install-SitecoreConfiguration @sitecoreCD
Install-SitecoreConfiguration @sitecorePRC
Install-SitecoreConfiguration @sitecoreREP
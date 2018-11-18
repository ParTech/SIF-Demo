# General Args
$prefix                 = 'demo_xm1'
$configsRoot            = Join-Path $PSScriptRoot 'configs'
$packagesRoot           = Join-Path $PSScriptRoot 'packages'
$sqlServer              = 'localhost'
$sqlServerAdminUser		= 'sa'
$sqlServerAdminPassword = 'blank'
$instanceNames = @{
    Cm      = "${prefix}.cm"
    Cd      = "${prefix}.cd"
    Cd2     = "${prefix}.cd2"
    Publish = "${prefix}.publish"
}

# Install Publishing Service
$publish = @{
    Path            = Join-Path $configsRoot publishing-host.json
    Package         = Join-Path $packagesRoot 'Sitecore Publishing Service 3.1.1 rev. 180807.zip'
    SqlDbPrefix     = $prefix
    SiteName        = $instanceNames.Publish
    SqlServer           = $sqlServer
	SqlAdminUser		= $sqlServerAdminUser
	SqlAdminPassword	= $sqlServerAdminPassword
}

# Configure Sitecore
$sitecoreCM = @{
    Path            = Join-Path $configsRoot sitecore-cm.json
    Package         = Join-Path $packagesRoot 'Sitecore Publishing Module 3.1.1 rev. 180807.zip'
    SiteName        = $instanceNames.Cm
    PublishingUrl   = "http://" + $instanceNames.Publish
}

$sitecoreCD = @{
    Path            = Join-Path $configsRoot sitecore-cd.json
    Package         = Join-Path $packagesRoot 'Sitecore Publishing Module 3.1.1 rev. 180807.zip'
    SiteName        = $instanceNames.Cd
    PublishingUrl   = "http://" + $instanceNames.Publish
}

$sitecoreCD2 = @{
    Path            = Join-Path $configsRoot sitecore-cd.json
    Package         = Join-Path $packagesRoot 'Sitecore Publishing Module 3.1.1 rev. 180807.zip'
    SiteName        = $instanceNames.Cd2
    PublishingUrl   = "http://" + $instanceNames.Publish
}

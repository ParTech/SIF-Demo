# General Args
$prefix                 = 'demo_xm0'
$configsRoot            = Join-Path $PSScriptRoot Configs
$packagesRoot           = Join-Path $PSScriptRoot Packages
$licenseFilePath        = Join-Path $PSScriptRoot '..\\license.xml'
$sqlServer              = 'localhost'
$sqlServerAdminUser		= 'sa'
$sqlServerAdminPassword = 'blank'

# Install Sitecore
$sitecoreStandalone = @{
    Path                = Join-Path $configsRoot sitecore-xm1-cm.json
    Package             = Join-Path $packagesRoot 'Sitecore 9.0.2 rev. 180604 (OnPrem)_cm.scwdp.zip'
    LicenseFile         = $licenseFilePath
    SqlDbPrefix         = $prefix
	SolrCorePrefix      = $prefix
    SiteName            = $prefix
    SqlServer           = $sqlServer
	SqlAdminUser		= $sqlServerAdminUser
	SqlAdminPassword	= $sqlServerAdminPassword
}
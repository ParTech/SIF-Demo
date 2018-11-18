<#
    Install script for a full featured instance on a single machine
#>

# General Args
$prefix                 = 'demo_xp0'
$configsRoot            = Join-Path $PSScriptRoot 'configs'
$packagesRoot           = Join-Path $PSScriptRoot 'packages'
$licenseFilePath        = Join-Path $PSScriptRoot '..\\license.xml'
$sqlServer              = 'localhost'
$sqlServerAdminUser		= 'sa'
$sqlServerAdminPassword = 'blank'
$sitecoreVersion        = 'Sitecore 9.0.2 rev. 180604'
$xconnectCertificateName = "$prefix.xconnect"
$instanceNames = @{
    Sitecore = "${prefix}"
    XConnect = "${prefix}.xconnect"
}
$solr = @{
    Root            = 'c:\solr\solr-6.6.2\'
    Service         = 'solr-6.6.2'
}


### Sitecore ###

# Install client certificate for XConnect 
$xconnectCertificate = @{
    Path = Join-Path $configsRoot 'xconnect-createcert.json'
    CertificateName = $xconnectCertificateName
	CertPath = Join-Path $PSScriptRoot certificates
}

Install-SitecoreConfiguration @certParams -Verbose

# Configre Sitecore Solr
$sitecoreSolr = @{
    Path                = Join-Path $configsRoot sitecore-solr.json
    SolrRoot            = $solr.Root
    SolrService         = $solr.Service
    CorePrefix          = $prefix
}

# Install Sitecore
$sitecore = @{
    Path                = Join-Path $configsRoot sitecore-xp0.json
    Package             = Join-Path $packagesRoot "$sitecoreVersion (OnPrem)_single.scwdp.zip"
    LicenseFile         = $licenseFilePath
    SqlDbPrefix         = $prefix
    SolrCorePrefix      = $prefix
    SiteName            = $instanceNames.Sitecore
    SqlServer           = $sqlServer
	SqlAdminUser		= $sqlServerAdminUser
	SqlAdminPassword	= $sqlServerAdminPassword
    XConnectCollectionService  = "http://$($instanceNames.XConnect)"
	XConnectCert		= $xconnectCertificateName
}

### XConnect ###

# Configure XConnect Solr
$xconnectSolr = @{
    Path                = Join-Path $configsRoot xconnect-solr.json
    SolrRoot            = $solr.Root
    SolrService         = $solr.Service
    CorePrefix          = $prefix
}

# Install XConnect
$xconnect = @{
    Path                = Join-Path $configsRoot xconnect-xp0.json
    Package             = Join-Path $packagesRoot "$sitecoreVersion (OnPrem)_xp0xconnect.scwdp.zip"
    LicenseFile         = $licenseFilePath
    SiteName            = $instanceNames.Xconnect
    SqlDbPrefix         = $prefix
    SolrCorePrefix      = $prefix
    SqlServer           = $sqlServer
	SqlAdminUser		= $sqlServerAdminUser
	SqlAdminPassword	= $sqlServerAdminPassword
	XConnectCert		= $xconnectCertificateName
}
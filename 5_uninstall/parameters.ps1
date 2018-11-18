# General Args
$prefix                 = 'demo_xm1'
$configsRoot            = Join-Path $PSScriptRoot Configs
$sqlServer              = 'localhost'
$sqlServerAdminUser		= 'sa'
$sqlServerAdminPassword = 'blank'

$sitecoreSolr = @{
    SolrRoot            = 'C:\Solr\solr-6.6.2'
    SolrService         = 'solr-6.6.2'
}
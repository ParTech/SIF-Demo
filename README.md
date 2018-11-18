# Sitecore Installation Framework (SIF) examples

Based on the SIF configuration demos by Thomas Eldblom (https://github.com/Eldblom/sifdemos).  
Updated and tested for Sitecore 9.0.2 by Ruud van Falier, ParTech.

## Prerequisites

* If you haven't used SIF before, make sure to follow the installation guide:  https://dev.sitecore.net/Downloads/Sitecore_Installation_Framework/1x/Sitecore_Installation_Framework_12.aspx  
**Pay extra attention to the SIF prequisites!**
* Read the README.md file from each of the `<example_name>/packages` folders and make sure the required Sitecore installation (`*.scwdp.zip`) packages are placed into those folders

## Examples

* **1_xm1**: Installs SOLR cores, CM instance & CD instance (Scaled, CMS-Only)
* **2_xm0**: Installs combined CM/CD instance (Single, CMS-only)
* **3_cd**: Installs one additional CD instance for the `1_xm1` example
* **4_publish**: Installs the Publishing Service for the `1_xm1` example
* **5_uninstall**: Uninstalls the `1_xm1` example
* **6_xp1**: Installs SOLR cores, XConnect (scaled), CM instance, CD instance, Reporting instance, Processing instance  (Complete XP, Scaled)
* **7_xp0**: Installs SOLR cores, XConnect, CM/CD/Collection/Reporting/Processing instance (Complete XP, Single)
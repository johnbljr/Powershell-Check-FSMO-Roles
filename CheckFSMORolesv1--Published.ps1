<#
------------------------------------------------------------
Author: John Leger
Date: Feb. 20, 2019
Powershell Version Built/Tested on: 5.1
Title: Check FSMO Roles
Website: https://github.com/johnbljr
License: GNU General Public License v3.0
------------------------------------------------------------
#>  
$domain = read-Host 'FQDN:'
get-adforest $domain | format-list schemamaster,domainnamingmaster
get-addomain $domain | format-list pdcemulator,ridmaster,infrastructuremaster
#
# script to test basic functionality of Office Online Server
#

Write-host “” 
[string]$base = Read-host “Hostname of Office Online Server (e.g. mail.company.com)” 
write-host “” 

$hcheck = "https://"+$base+"/m/met/participant.svc/jsonAnonymous/BroadcastPing"

$test1 = invoke-webrequest -Uri $hcheck
if ($test1.StatusCode -eq 200)
{
	write-host "Health check shows status OK" 
}

$hcheck2 = "https://"+$base+"/hosting/discovery/"

$test2 = invoke-webrequest $hcheck
if ($test2.StatusCode -eq 200)
{
	write-host "Health check shows status OK" 
}



# Stop an existing firewall

$azfw = Get-AzFirewall -Name "AI-FW1" -ResourceGroupName "AI-RG1"
$azfw.Deallocate()
Set-AzFirewall -AzureFirewall $azfw
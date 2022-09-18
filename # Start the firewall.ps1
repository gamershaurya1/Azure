# Start the firewall

$azfw = Get-AzFirewall -Name "AI-FW1" -ResourceGroupName "AI-RG1"
$vnet = Get-AzVirtualNetwork -ResourceGroupName "AI-RG1" -Name "AI-VNET1"
$publicip1 = Get-AzPublicIpAddress -Name "aifwpublicip" -ResourceGroupName "AI-RG1"
$azfw.Allocate($vnet,@($publicip1))

Set-AzFirewall -AzureFirewall $azfw
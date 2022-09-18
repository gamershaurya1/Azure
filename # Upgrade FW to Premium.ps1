# Upgrade FW to Premium

$azfw = Get-AzFirewall -Name "AI-FW1" -ResourceGroupName "AI-RG1"
$azfw.Sku.Tier="Premium"
$vnet = Get-AzVirtualNetwork -ResourceGroupName "AI-RG1" -Name "AI-VNET1"
$publicip = Get-AzPublicIpAddress -Name "aifwpublicip" -ResourceGroupName "AI-RG1"
$azfw.Allocate($vnet,$publicip)
Set-AzFirewall -AzureFirewall $azfw
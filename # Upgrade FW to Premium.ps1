# Upgrade FW to Premium

$azfw = Get-AzFirewall -Name "AI-FW1" -ResourceGroupName "AI-RG1"
$azfw.Sku.Tier="Premium"
$vnet = Get-AzVirtualNetwork -ResourceGroupName "AI-RG1" -Name "AI-VNET1"
$publicip = Get-AzPublicIpAddress -Name "AI-FW-PUBLIC-IP1" -ResourceGroupName "AI-RG1"
$azfw.Allocate($vnet,$publicip)
Set-AzFirewall -AzureFirewall $azfw

#Successfully upgraded

AI-VM1-ip
ai-vm110
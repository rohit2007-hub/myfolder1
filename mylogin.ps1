$ApplicationId = "166c2531-f710-4fa7-8f90-a5e8e6a09c6f"
$azureSPNPassword = "1pj9NHKrsZ6rU=pY?4gd]/KARcbaf.gc"
$azurePassword = ConvertTo-SecureString $azureSPNPassword -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential($ApplicationId, $azurePassword)
$tenantId = "f7bb915e-ccfb-4f94-bbd0-cf26e890ad83"
$subscriptionname = "Free Trial"
Add-AzAccount -Credential $credential -ServicePrincipal -TenantId $tenantId -SubscriptionName $subscriptionname  
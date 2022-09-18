# Parameters
$appServicePlanName = "cll01-win-plan"
$location           = "West Europe"
$resourceGroupName  = "cllDemo-rg"
$webAppName         = "cll01-webapp"

# Create a resource group.
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create an App Service plan in Basic tier.
New-AzAppServicePlan -Name $appServicePlanName `
-Location $location `
-ResourceGroupName $resourceGroupName `
-Tier Basic `
-NumberofWorkers 1 `
-WorkerSize Small

# Create WebApp
New-AzWebApp -ResourceGroupName $resourceGroupName -Location $location -Name $webAppName -AppServicePlan $appServicePlanName

    $policyName = 'policyLocationDefinition'
    $policyAssignment = 'policyLocationAssignment'
    $policyFile = 'c:\scripts\arm policy\locationAustralia.json'
    
    New-AzureRmPolicyDefinition -Name $policyName -Policy $policyFile -Verbose
    
    #$resourceGroup = Get-AzureRmResourceGroup -Name 'RG-AD'
    $policy = Get-AzureRmPolicyDefinition -Name $policyName
    
    #New-AzureRmPolicyAssignment -Name $policyAssignment -PolicyDefinition $policy -Scope $resourceGroup.ResourceId -Verbose
    New-AzureRmPolicyAssignment -Name $policyAssignment -PolicyDefinition $policy -Verbose -Scope "/subscriptions/bb95d56e-1c7b-4eb9-b538-7335967d8341"
Write-Host "Configuring Azure SQL Server"
$targetserver = $env:AdsOpts_CD_Services_AzureSQLServer_Name + ".database.windows.net"
if($env:AdsOpts_CD_Services_AzureSQLServer_AdsGoFastDB_Enable -eq "True")
{

    #Add Ip to SQL Firewall
    $myIp = (Invoke-WebRequest ifconfig.me/ip).Content
    az sql server firewall-rule create -g $env:AdsOpts_CD_ResourceGroup_Name -s $env:AdsOpts_CD_Services_AzureSQLServer_Name -n "MySetupIP" --start-ip-address $myIp --end-ip-address $myIp
    #Allow Azure services and resources to access this server
    az sql server firewall-rule create -g $env:AdsOpts_CD_ResourceGroup_Name -s $env:AdsOpts_CD_Services_AzureSQLServer_Name -n "Azure" --start-ip-address 0.0.0.0 --end-ip-address 0.0.0.0

    $CurrentPath = (Get-Location).Path
    Set-Location "..\bin\publish\unzipped\database\"

    .\AdsGoFastDbUp.exe -c "Server=$targetserver; Database=$env:AdsOpts_CD_Services_AzureSQLServer_AdsGoFastDB_Name; user id=$env:AdsOpts_CD_Services_AzureSQLServer_AdminUser; password=$env:AdsOpts_CD_Services_AzureSQLServer_AdminPassword" -v True
    
    Set-Location $CurrentPath
    

    #Environment Specific Updates 
    $subid = (az account show -s $env:AdsOpts_CD_ResourceGroup_Subscription | ConvertFrom-Json).id
    $LogAnalyticsId = az monitor log-analytics workspace show --resource-group $env:AdsOpts_CD_ResourceGroup_Name --workspace-name $env:AdsOpts_CD_Services_LogAnalytics_Name --query customerId --out tsv 
    
    $sql = 
    "Update [dbo].[DataFactory]
        Set [Name] = '$env:AdsOpts_CD_Services_DataFactory_Name', 
	    ResourceGroup = '$env:AdsOpts_CD_ResourceGroup_Name',
	    SubscriptionUid = '$subid',
	    DefaultKeyVaultURL = 'https://$env:AdsOpts_CD_Services_KeyVault_Name.vault.azure.net/', 
	    LogAnalyticsWorkspaceId = '$LogAnalyticsId'
    where id = 1"

    Write-Host "Updating DataFactory in ADS Go Fast DB Config"
    Invoke-Sqlcmd -ServerInstance "$targetserver,1433" -Database $env:AdsOpts_CD_Services_AzureSQLServer_AdsGoFastDB_Name -Username $env:AdsOpts_CD_Services_AzureSQLServer_AdminUser -Password $env:AdsOpts_CD_Services_AzureSQLServer_AdminPassword -Query $sql 

    #TODO - Add in source and target system updates
    
    #sqlpackage.exe /a:Publish /sf:'./../bin/publish/unzipped/database/AdsGoFastBuild.dacpac' /tsn:$targetserver  /tdn:$env:AdsOpts_CD_Services_AzureSQLServer_AdsGoFastDB_Name /tu:$env:AdsOpts_CD_Services_AzureSQLServer_AdminUser /tp:$env:AdsOpts_CD_Services_AzureSQLServer_AdminPassword

    
    #Database - Post Script Deployment
    #Invoke-Sqlcmd -ServerInstance "$targetserver,1433" -Database $env:AdsOpts_CD_Services_AzureSQLServer_AdsGoFastDB_Name -Username $env:AdsOpts_CD_Services_AzureSQLServer_AdminUser -Password $env:AdsOpts_CD_Services_AzureSQLServer_AdminPassword -InputFile "./../../Database/AdsGoFastDatabase"  

}
else 
{
    Write-Host "Skipped Configuring Azure SQL Server"
}